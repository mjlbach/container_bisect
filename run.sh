podman build . -t cuda-test-1 && \
podman run --rm -it --net=host \
--security-opt=no-new-privileges \
--security-opt label=type:nvidia_container_t \
cuda-test-1:latest ./egl_example/egl_example
