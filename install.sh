sudo apt-get -y install nodejs

git clone https://github.com/EricssonResearch/openwebrtc-examples

rm openwebrtc-examples/web/client/sdp.js

wget https://raw.githubusercontent.com/EricssonResearch/openwebrtc/master/bridge/client/sdp.js -O openwebrtc-examples/web/client/sdp.js

openssl req -x509 -newkey rsa:2048 -keyout ~/webrtc_server_pkey.pem -out ~/webrtc_server_cert.pem -days 99999 -nodes

#cd openwebrtc-examples/web/ 
#nohup nodejs channel_server.js 8080 8443 ~/webrtc_server_pkey.pem ~/webrtc_server_cert.perm &



sudo apt-get -y install coturn
sudo cp turnserver.conf /etc/turnserver.conf

#nohup turnserver -v &










