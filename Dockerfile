FROM python

WORKDIR /app

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y sqlite3 libsqlite3-dev

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 80

ENTRYPOINT [ "python" ]

CMD ["app.py"]