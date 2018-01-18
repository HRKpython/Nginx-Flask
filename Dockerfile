FROM tiangolo/uwsgi-nginx-flask:flask

WORKDIR /app/

COPY requirements.txt /app/
RUN pip install -r ./requirements.txt

COPY app.py /app/

# ENTRYPOINT /bin/bash
EXPOSE 5000

ENTRYPOINT python ./app.py