FROM python:3.9.16-slim-bullseye as prepare

ENV PATH /root/.foundry/bin:$PATH

RUN apt-get -y update; \
    apt-get -y install curl git

RUN curl -L https://foundry.paradigm.xyz | bash
RUN foundryup

ENTRYPOINT ["anvil", "--host=0.0.0.0"]


