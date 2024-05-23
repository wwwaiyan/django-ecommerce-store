FROM python:3.10
ENV PYTHONBUFFERED 1
RUN mkdir /django-docker
WORKDIR /django-docker
COPY requirements.txt /django-docker/
COPY entrypoint.sh /django-docker/
RUN pip install -r requirements.txt
COPY . /django-docker
RUN chmod +x entrypoint.sh
EXPOSE 9000
ENTRYPOINT [ "sh", "entrypoint.sh" ]