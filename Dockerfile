FROM python:3.8

COPY poetry.lock pyproject.toml main.py /

RUN pip install poetry && \
    poetry config virtualenvs.create false && \
    poetry install


ENTRYPOINT ["gunicorn"]

CMD ["main:app", "-w",  "4", "-k", "uvicorn.workers.UvicornWorker",  "-b",  "unix:sidecar.sock"]
