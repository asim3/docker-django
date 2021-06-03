# Django Docker Images


## Add
```dockerfile
FROM asim3/django:v1

COPY ./your_project_root /opt/code
```


## Build
```bash
docker image build -t my_new_django:latest .
```


## Run
```bash
docker container run -p 8000:8000 my_new_django:latest
```
