from fastapi import FastAPI

app = FastAPI()


@app.get("/hello")
def get_hello():
    return "Hello"


@app.get("/liveness")
def get_liveness():
    return "OK"


@app.get("/healthcheck")
def get_healthcheck():
    return "OK"
