FROM python:3.5-slim
COPY ./app /app
WORKDIR /app
RUN pip install --no-cache-dir -r requirements.txt

COPY ./docker/dev/python/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
RUN python manage.py runserver 0.0.0.0:8000
