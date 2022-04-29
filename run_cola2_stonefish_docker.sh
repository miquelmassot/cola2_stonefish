xhost +local:root
docker run -it\
    --rm \
    --volume=/tmp/.X11-unix:/tmp/.X11-unix \
    --mount type=bind,source="/home/$USER",target=/host_home \
    --env="DISPLAY=$DISPLAY" \
    --net=host \
    --gpus all \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    -e QT_X11_NO_MITSHM=1 \
    oceanperception/cola2_stonefish:latest byobu