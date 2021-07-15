podman build -f Dockerfile.extreme_minimal -t cuda-test-1 && \
podman run --rm -it --net=host \
--security-opt=no-new-privileges \
--security-opt label=type:nvidia_container_t \
-e DISPLAY \
-v $HOME:$HOME \
cuda-test-1:latest bash
