import socket
import sys
import os
import subprocess

def launch(port_file, opts, debug):
    # create and bind server socket
    server = socket.socket( socket.AF_INET, socket.SOCK_STREAM )
    server.bind(("localhost",0))
    server.listen(1)

    # buffer for output file
    output = ""

    # fork and launch a CLI process
    addr, port = server.getsockname()
    if debug:
        print( port )
    else:
        proc = subprocess.Popen( "$BPHOME/bridgepoint --launcher.suppressErrors -clean -noSplash -data $WORKSPACE -application org.xtuml.bp.cli.Launch -port " + str(port) + " " + opts, shell=True )
        output += "PID: " + str(proc.pid) + "\n"

    try:
        # accept a connection
        conn, addr = server.accept()

        # receive data
        port = recvline(conn)
        output += "PORT: " + port + "\n"

        # output the data
        f = open(port_file, "w")
        f.write(output)
        f.close()

        # close sockets
        server.close()
        conn.close()
        return 0

    except ( KeyboardInterrupt, SystemExit ):
        proc.kill()
        return 1

def cmd(cmd, port):
    # create the socket and connect
    sock = socket.socket( socket.AF_INET, socket.SOCK_STREAM )
    try:
        sock.connect( ("localhost", port) )
    except socket.error:
        print( "Connection refused" )
        return 1

    # send the command
    sendcmd( sock, cmd )

    # receive response data
    resp = recvresp(sock)

    # close socket
    sock.close()

    return "OK" == resp

def sendcmd(sock, cmd):
    totalsent = 0
    cmd = cmd.strip() + "\n"
    while totalsent < len(cmd):
        sent = sock.send(cmd[totalsent:])
        if sent == 0:
            raise RuntimeError("socket connection closed")
        totalsent = totalsent + sent

def recvresp(sock):
    MSGLEN=2
    BUFSIZE=2048
    chunks = []
    bytes_recd = 0
    while bytes_recd < MSGLEN:
        chunk = sock.recv(min(MSGLEN - bytes_recd, BUFSIZE))
        if chunk == "":
            raise RuntimeError("socket connection closed")
        chunks.append(chunk)
        bytes_recd = bytes_recd + len(chunk)
    return "".join(chunks)

def recvline(sock):
    chunks = []
    c = ""
    while "\n" != c:
        c = sock.recv(1)
        if c == "":
            raise RuntimeError("socket connection closed")
        chunks.append(c)
    return "".join(chunks).strip()

def usage(incorrect=""):
    if "" != incorrect:
        print( "Incorrect usage '" + incorrect + "'" )
    print( "Usage:" )
    print( "    python " + sys.argv[0] + " launch" )
    print( "    python " + sys.argv[0] + " cmd <port> <command>" )
    sys.exit(1)

if len(sys.argv) > 2:
    if "launch" == sys.argv[1].lower():
        opts = ""
        if len(sys.argv) > 3:
            opts = " ".join(sys.argv[4:]) if "-debug" == sys.argv[3] else " ".join(sys.argv[3:])
        code = launch(sys.argv[2], opts, "-debug" == sys.argv[3] if len(sys.argv)>3 else False)
        sys.exit(code)
    elif "cmd" == sys.argv[1].lower():
        if len(sys.argv) > 3:
            port=0
            try:
                port = int(sys.argv[2])
            except ValueError:
                usage(" ".join(sys.argv))
            code = cmd( " ".join(sys.argv[3:]), port )
            sys.exit(code)
        else:
            usage(" ".join(sys.argv))
    else:
        usage()
else:
    usage()

