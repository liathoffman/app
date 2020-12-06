FROM alpine:3.9
LABEL maintainer="liatshoffman@gmail.com"
RUN apk --update add python3 py3-pip
WORKDIR /
COPY . /
RUN pip3 install wheel
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["app/app.py"]
EXPOSE 5000
