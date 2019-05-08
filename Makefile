XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth

build:
	docker build -t mc:ftb .

run:
	xauth nlist :0 | sed -e 's/^..../ffff/' | xauth -f ${XAUTH} nmerge -
	docker run --rm -ti -v ftb2:/root/ --device /dev/dri:/dev/dri -v ${XSOCK}:${XSOCK} -v ${XAUTH}:${XAUTH} -e XAUTHORITY=${XAUTH} -e DISPLAY=${DISPLAY} mc:ftb
