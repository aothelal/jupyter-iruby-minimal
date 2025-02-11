# jupyter-iruby-minimal
A minimal Jupyter + Ruby kernel Installation in a docker container, built for on-the-fly experiments using Ruby.

Build the docker image:

`docker build . -t jupyter-iruby-minimal`

Run the container:

`docker run -p 8888:8888 --add-host=host.docker.internal:host-gateway -t jupyter-iruby-minimal`
