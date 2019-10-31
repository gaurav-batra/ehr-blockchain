FROM python:3.6-stretch

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt
RUN python manage.py migrate

EXPOSE 8000

ENTRYPOINT ["python", "manage.py"]
CMD ["runserver","0.0.0.0:8000"]
