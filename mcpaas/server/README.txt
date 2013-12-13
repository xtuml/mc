                           MC-PaaS Phase 2 Server
                           

Installation
--------------
Requirements:
- Node.js and npm
- zip/unzip
- bash
- BridgePoint
  - Edit jsLauncher.sh to set appropriate paths and versions
  - ENV Var MGLS_LICENSE_FILE set, or unlicensed generator installed
  
Setup:
You must run the following commands in the directory where the server script lives:

$ npm install
$ mkdir -p public/incoming
$ mkdir -p public/outgoing
