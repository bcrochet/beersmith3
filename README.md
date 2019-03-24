BeerSmith 3 container
=====================

Building
--------

docker build .

Running
-------

docker volume create beersmith3
docker run -ti --rm --init -e DISPLAY=$DISPLAY -u $UID:$(id -g $USER) -v /var/run/cups/cups.sock:/var/run/cups/cups.sock -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/snd:/dev/snd:rw -v beersmith3:/home/beersmith3 bcrochet/beersmith3

You can substitue a different volume for the BeerSmith3 data files.
