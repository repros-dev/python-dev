FROM cirss/repro-parent:latest

COPY exports /repro/exports

ADD ${REPRO_DIST}/boot-setup /repro/dist/
#
#COPY repro.require /repro/repro-boot/
#
RUN bash /repro/dist/boot-setup

USER repro

RUN repro.require python-dev exports --default

CMD  /bin/bash -il
