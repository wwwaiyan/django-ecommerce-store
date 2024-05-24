FROM public.ecr.aws/docker/library/python:3.9.19-alpine3.20
ENV PYTHONBUFFERED 1
RUN mkdir /django-docker
WORKDIR /django-docker
COPY requirements.txt /django-docker/
COPY entrypoint.sh /django-docker/
RUN pip install -r requirements.txt
COPY . /django-docker
RUN chmod +x entrypoint.sh
EXPOSE 80
ENTRYPOINT [ "sh", "entrypoint.sh" ]