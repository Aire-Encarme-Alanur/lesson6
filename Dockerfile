FROM python

WORKDIR /oleynik_trm

COPY ./requirements.txt /oleynik_trm/requirements.txt

RUN pip install -r requirements.txt

COPY ./ /oleynik_trm/

ENV FLASK_APP program.py

CMD flask run -h 0.0.0.0
