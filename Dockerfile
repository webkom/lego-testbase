FROM python:3.10

LABEL org.opencontainers.image.authors="webkom@abakus.no"

RUN pip install tox

# Install Codecov
RUN curl https://uploader.codecov.io/latest/linux/codecov --output /usr/local/bin/codecov
RUN chmod +x /usr/local/bin/codecov
