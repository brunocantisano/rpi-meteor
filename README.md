# Meteor

![docker_logo](https://raw.githubusercontent.com/brunocantisano/rpi-meteor/master/files/docker.png)![docker_meteor_logo](https://raw.githubusercontent.com/brunocantisano/rpi-meteor/master/files/logo-meteor.png)![docker_paperinik_logo](https://raw.githubusercontent.com/brunocantisano/rpi-meteor/master/files/docker_paperinik_120x120.png)

This Docker container implements a the Meteor fullstack framework.

 * Raspbian base image: paperinik/rpi-node.
 
### Installation from [Docker registry hub](https://registry.hub.docker.com/u/paperinik/rpi-meteor/).

You can download the image with the following command:

```bash
docker pull paperinik/rpi-meteor
```

Definition
----

It is a great solution for communities and companies wanting to privately host their own chat service or for developers looking forward to build and evolve their own chat platforms.

# How to use this image

The Meteor instance starts listening on the default Meteor port of 3000 on the container.

Environment variables
----

1) This image uses environment variables to allow the configuration of some parameteres at run time:

* Variable name: `MONGO_URL`
* Default value: mongodb://localhost:27017/meteor
* Accepted values: mongo url.
* Description: you must inform a mongo database url in order to run this container.
----

* Variable name: `VERSION`
* Default value: mongodb://localhost:27017/meteor
* Accepted values: If you want to build a container with a new rocket.chat version, you must change this variable. YOU DON'T HAVE TO USE IT if you want run your container normally.
* Description: is used only internally.
----

2) If you'd like to be able to access the instance directly at standard port on the host machine:
```bash
    docker run --name meteor -p 9415:3000 --env ROOT_URL=http://localhost:3000/ --env MONGO_URL=mongodb://localhost:27017/meteor -d meteor
```
----

3) Then, access it via `http://localhost:9415` in a browser.  Replace `localhost` in `ROOT_URL` with your own domain name if you are hosting at your own domain.
