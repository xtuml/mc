//
//  Simple node.js script to run the bash script that
//  launches xtumlmc_bild on the files in the gen/ folder,
//  thereby translating to C, and putting the output in src/
//
//  IMPORTANT: The jsLauncher script will nuke the files in 
//  src/ before building!
//
var http = require("http"),
    cp = require("child_process");

console.log("Make sure to start the rsync daemon! (sudo rsync --daemon)\n");

http.createServer(
  function(request, response) {

    console.log("\n=========================================================");
    console.log("Launching model translation");

    cp.execFile("./jsLauncher.sh", 
      function (error, stdout, stderr) {
        console.log("stdout: " + stdout);
        if (error !== null) {
          console.log("exec error: " + error);
        }
      }
    );

    response.writeHead(200, {'Content-Type': 'text/plain'});
    response.end("Build Started");
  }
).listen(8000);


