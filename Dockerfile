FROM ubuntu:18.04

RUN apt-get update
#RUN apt-get -y install python-pip

RUN apt install -y python3-pip
#RUN pip install -y flask

WORKDIR Work/

COPY /hits/app.py .
COPY requirements.txt .

RUN mkdir logs
RUN pip3 install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["/usr/bin/python3"]
CMD ["app.py"]
