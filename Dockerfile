FROM python:3.7.3-stretch

## Step 1:
WORKDIR /app

## Step 2:
COPY . FlaskHello.py /app/

## Step 3:
RUN pip install --upgrade pip==21.0.1 &&\
    pip install --trusted-host pypi.python.org -r  requirements.txt

## Step 4:
EXPOSE 80

## Step 5:
CMD ["python", "FlaskHello.py"]

