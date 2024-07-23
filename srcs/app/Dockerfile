FROM python:3.8-slim
WORKDIR /app
COPY . /app
RUN pip install -r requirements/requirements.txt
EXPOSE 80
ENV NOM=coca
CMD ["python", "app.py"]