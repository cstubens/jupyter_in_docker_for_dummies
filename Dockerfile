FROM python:3.8

RUN apt-get upgrade -y
RUN pip install --upgrade pip

WORKDIR /install
ADD requirements.txt .
RUN pip install -r requirements.txt

EXPOSE 8080
VOLUME /notebooks
WORKDIR /notebooks

CMD jupyter notebook --allow-root --ip=0.0.0.0 --port=8080
