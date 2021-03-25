FROM library/debian:10
RUN apt-get update && apt-get -y install inetutils-ping && rm -rf /var/lib/apt /var/cache/apt
# ENTRYPOINT + CMD <--- "/bin/sh -c" "/bin/bash"
ENTRYPOINT [ "/bin/ping", "-c", "5" ]
# Modificable desde "CMDLINE"
CMD [ "8.8.8.8" ]
