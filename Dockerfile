FROM python:3.11

LABEL org.opencontainers.image.authors="webkom@abakus.no"

RUN pip install tox

# Install Codecov
RUN curl https://uploader.codecov.io/latest/linux/codecov --output /usr/local/bin/codecov
RUN chmod +x /usr/local/bin/codecov

# Configure Poetry
ENV POETRY_VERSION=1.4.2
ENV POETRY_HOME=/opt/poetry
ENV POETRY_VENV=/opt/poetry-venv
ENV POETRY_CACHE_DIR=/opt/.cache

# Install poetry separated from system interpreter
RUN python3 -m venv $POETRY_VENV \
    && $POETRY_VENV/bin/pip install -U pip setuptools \
    && $POETRY_VENV/bin/pip install poetry==${POETRY_VERSION}

# Add `poetry` to PATH
ENV PATH="${PATH}:${POETRY_VENV}/bin"
