FROM python:3.12.9-alpine3.21

RUN apk add --no-cache gcc python3-dev musl-dev linux-headers build-base nodejs ruby ruby-rake zeromq zeromq-dev

RUN pip install jupyterlab

RUN jupyter lab --generate-config

COPY config/config.py /root/.jupyter/jupyter_lab_config.py

RUN gem install iruby

RUN iruby register --force

CMD ["jupyter", "lab", "--allow-root", "--no-browser", "--port=8888"]
