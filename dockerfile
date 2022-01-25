# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:slim

EXPOSE 1234

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Install pip requirements
RUN python -m pip install --upgrade pip
COPY requirements.txt .
RUN python -m pip install -r requirements.txt

WORKDIR /code
COPY . /code
# CMD ["gunicorn", "--bind", "0.0.0.0:1234", "zcart.wsgi"]
