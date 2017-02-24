echo "Start MongoDB server.."
echo "Config file path: C:\\MongoDB\\Server\\3.2\\mongod.cfg"
echo "To stop MongoDB server: ctrl + C"
mongod --verbose --config "C:\\MongoDB\\Server\\3.2\\mongod.cfg"
net start MongoDB