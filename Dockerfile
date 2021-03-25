FROM library/debian:10
RUN apt-get update && apt-get -y install inetutils-ping && rm -rf /var/lib/apt /var/cache/apt
ENTRYPOINT [ "/bin/ping", "-c", "5" ]
