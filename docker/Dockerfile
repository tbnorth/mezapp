FROM python:3.6

RUN pip install mezzanine \
 && mezzanine-project myproject

WORKDIR myproject

RUN python manage.py createdb --noinput

ADD start.sh .
RUN chmod a+x start.sh

ENTRYPOINT ["./start.sh"]

