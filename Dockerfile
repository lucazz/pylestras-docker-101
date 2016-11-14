FROM python:2.7
ENV PYTHONUNBUFFERED 1

RUN mkdir /code

WORKDIR /code

ADD requirements.txt /code/

RUN pip install -r requirements.txt

ADD . /code/

ADD wait-for-it.sh /usr/local/bin/wait-for-it.sh
ADD docker-entrypoint.sh /docker-entrypoint.sh

CMD ["/docker-entrypoint.sh"]
