docker build . -t cuda-test-1 && \
docker run --rm -it --gpus 0 cuda-test-1:latest
