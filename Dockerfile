FROM debian:buster-slim

RUN apt-get update && \
apt install -y python3-pip jq && \
pip3 install awscli

ARG UID=1000
RUN useradd -m -u ${UID} aws
USER ${UID}
ENV USER_ID 1000
ENV GROUP_ID 1000

WORKDIR /home/aws
COPY entrypoint.sh /bin
ENTRYPOINT ["entrypoint.sh"]
