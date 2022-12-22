FROM python:3.11

LABEL org.opencontainers.image.authors="webkom@abakus.no"

RUN pip install tox

RUN pip install pdm

# Install Codecov
RUN curl https://uploader.codecov.io/latest/linux/codecov --output /usr/local/bin/codecov
RUN chmod +x /usr/local/bin/codecov
