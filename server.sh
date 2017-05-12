sudo apt-get install nodejs
git clone https://github.com/EricssonResearch/openwebrtc-examples
rm openwebrtc-examples/web/client/sdp.js
wget https://raw.githubusercontent.com/EricssonResearch/openwebrtc/master/bridge/client/sdp.js -O openwebrtc-examples/web/client/sdp.js
cd openwebrtc-examples/web/
node channel_server.js


sudo apt-get install coturn
sudo cp turnserver.conf /etc/
sudo turnserver -c /etc/turnserver.conf --daemon
