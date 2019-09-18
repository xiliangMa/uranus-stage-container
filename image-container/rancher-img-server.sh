#!/bin/bash


sed -i "s/----->TARGET_IP<-----/$TARGET_IP/" /image-server/server.js
sed -i "s/----->AUTH<-----/$AUTH/" /image-server/server.js

cat /image-server/server.js

npm start server.js
