FROM alpine:3.18.2
RUN adduser -D docker_user
USER docker_user
