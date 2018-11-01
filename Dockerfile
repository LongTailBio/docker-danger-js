FROM node:8.12
MAINTAINER Benjamin Chrobot <benjamin.blair.chrobot@gmail.com>

RUN npm install --global danger

ENV WORK_DIR="/danger"

RUN danger --version

VOLUME ${WORK_DIR}
WORKDIR ${WORK_DIR}

ENTRYPOINT ["danger"]
