////////////////////////////////////////////////////////////////////////////////
//
//  MC-PaaS Phase 2 Server
//
//  - Takes files from HTTP POST request, stores them in the incoming/ folder,
//    then builds the contained model.
//  - In response to a HTTP GET request, returns a file from the outgoing/ 
//    folder to the client
//
////////////////////////////////////////////////////////////////////////////////

// Declarations
var fs = require('fs');
var express = require('express');
var path = require('path');
var cp = require("child_process");
var app = express();

// Configuration
app.configure(function () {
    app.use(express.bodyParser());
    app.use(express.static(path.join(__dirname, 'public')));
    app.use('/public', express.static(path.join(__dirname, 'public')));
});

// This function implements the ability to accept files from the client and build the contained model
app.post('/model', function(req, res, next) {
    if (!req.files.file) {
        console.log("ERROR: client attempted POST connection but no file was specified.");
        res.send('Invalid request.  No file to upload specified in a "file" object');
    } else {
        // Read the temporary location the file was uploaded to from the file object
        var tmpPath = req.files.file.path;
    
        // Set the path where the file should live so the MC can see it
        var targetPath = './public/incoming/' + req.files.file.name;
    
        // Move the file from the temporary location to the target location
        fs.rename(tmpPath, targetPath, function(err) {
            if ( err) throw err; 
            console.log('Accepted incoming file.  Moved it from ' + tmpPath + ' to ' + targetPath);
        });
    
        // Asyncronously launch the BP build
        cp.execFile("./jsLauncher.sh", [req.files.file.name], function (error, stdout, stderr) {
            console.log("stdout: " + stdout);
            if (error !== null) {
                console.log("exec error: " + error);
            }
        });
    
        // Send a response
        res.send(req.files.file.name + ' successfully sent to server.  Build has been started.');
    }
});

// This function implements the ability to send a requested file back to the client
app.get('/model/:file', function(req, res, next){
    // Check if the requested file exists.  Send an "unavailable" response if it does not.
    var targetFile = './public/outgoing/' + req.params.file;
    fs.open(targetFile, 'r', function(err, fd) {
        if (err) {
            console.log('Client requested file ' + targetFile + ' which does not exist');
            res.send('The requested file does not exist');
        } else {
            console.log('Sending requested file ' + targetFile + ' to client');
            res.sendfile(targetFile);
            fs.close(fd);
        }
    });
});

// Start the server
app.listen(3000);
console.log('Listening on port 3000');

