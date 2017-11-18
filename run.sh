docker run -d --name meteor -p 9413:3000 \
           --env ROOT_URL=http://localhost \
           --env MONGO_URL=mongodb://admin:admin@blablabla.mlab.com:23603/meteor \
           --env PORT=9013 \
           -v /media/usbraid/docker/meteor:/home/meteor \
           -v /media/usbraid/docker/meteor/log:/var/log/ \
           paperinik/rpi-meteor
