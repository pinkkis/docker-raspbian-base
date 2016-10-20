FROM resin/rpi-raspbian:jessie

MAINTAINER @pinkkis

RUN apt-get update && \
	apt-get upgrade && \
	apt-get install -y --no-install-recommends curl && \
	curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
	apt-get install -y --no-install-recommends  nodejs && \
	apt-get purge -y --auto-remove

CMD ["/bin/bash"]