FROM python:3.11-slim

ENV POETRY_HOME=/opt/poetry
ENV VENV_PATH=/opt/pysetup/.venv
ENV PYSETUP_PATH=/opt/pysetup
ENV POETRY_VERSION=1.2.1
ENV PATH="$POETRY_HOME/bin:$VENV_PATH/bin:$PYSETUP_PATH:$PATH"

WORKDIR $PYSETUP_PATH

RUN curl -s https://install.python-poetry.org | python --version $POETRY_VERSION

ENTRYPOINT ["poetry"]
