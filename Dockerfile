FROM python:3.10.2-buster
#python3.10.2-s;im-buster
WORKDIR /mydocer
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
COPY . /app
EXPOSE 80 
ENV FLASK_APP=app.py
CMD [ "python", "train.py"]
CMD [ "python", "app.py"]


#CMD [ "python", ",/home/athira/Downloads/Microservices-3/code_model_training/train.py"]
