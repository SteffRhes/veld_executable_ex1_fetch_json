FROM alpine:3.18.2
RUN useradd -u 1000 docker_user
USER docker_user
