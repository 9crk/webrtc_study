if [ "$1" == "" ]; then
    echo "input your ip"
    exit
fi
sudo apt-get -y install nodejs

git clone https://github.com/EricssonResearch/openwebrtc-examples

rm openwebrtc-examples/web/client/sdp.js

wget https://raw.githubusercontent.com/EricssonResearch/openwebrtc/master/bridge/client/sdp.js -O openwebrtc-examples/web/client/sdp.js

openssl req -x509 -newkey rsa:2048 -keyout ~/webrtc_server_pkey.pem -out ~/webrtc_server_cert.pem -days 99999 -nodes

sed 's/mmt-stun.verkstad.net/'$1'/g' -i openwebrtc-examples/web/client/main.js
sed 's/mmt-turn.verkstad.net/'$1'/g' -i openwebrtc-examples/web/client/main.js

#cd openwebrtc-examples/web/ 
#nohup nodejs channel_server.js 8080 8443 ~/webrtc_server_pkey.pem ~/webrtc_server_cert.perm &



sudo apt-get -y install coturn
sudo cp turnserver.conf /etc/turnserver.conf
#nohup turnserver -v &
