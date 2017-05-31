cd openwebrtc-examples/web/ 
nohup nodejs channel_server.js 8080 8443 ~/webrtc_server_pkey.pem ~/webrtc_server_cert.pem &
nohup turnserver -v &

