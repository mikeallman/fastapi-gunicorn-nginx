A simple API hacked up with FastAPI, Gunicorn + Uvicorn workers and an NGINX reverse proxy.

I want to deploy a web app to a preeixisting kubernetes cluster where the Istio configuration means we need the kubernetes heathcheck endpoints to be exposed on a different port than the main app.  Here I'm exploring if an nxginx sidecar could be an easy way to implement this.