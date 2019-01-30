FROM python:3.6-alpine

RUN pip install j2cli[yaml]

WORKDIR /build

ENTRYPOINT [ "j2" ]