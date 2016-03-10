FROM debian:stretch
MAINTAINER František Dvořák <valtri@civ.zcu.cz>

# ==== puppet ====

RUN apt-get update && apt-get install -y puppet
RUN puppet agent --enable

# ==== cleanup ====

RUN apt-get clean \
&& rm -rf /var/lib/apt/lists/*
