FROM python:3.8-slim

# Create directory app in image if it doesn't exist
WORKDIR /app
# Copy the current directory into directory app in image
COPY . /app

# Requirements
RUN pip install -r requirements/requirements.txt

ENV NOM=coca
CMD ["python", "app.py"]