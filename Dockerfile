ARG PARENT_IMAGE=cirss/repro-parent:latest

FROM ${PARENT_IMAGE}

COPY exports /repro/exports

ADD ${REPRO_DIST}/boot-setup /repro/dist/

RUN bash /repro/dist/boot-setup

USER repro

RUN repro.require python-dev exports --code --default

CMD  /bin/bash -il
