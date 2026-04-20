FROM ubuntu:22.04

USER root

RUN apt-get update && \
    apt-get install -y python3 python3-pip git && \
    pip3 install jupyterlab

WORKDIR /workspace

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
