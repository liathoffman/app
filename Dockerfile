FROM alpine:3.9
RUN apk --update add bash nano python3 /
    && python3-pip
ENV STATIC_URL /static
ENV STATIC_PATH /var/www/app/static
COPY ./requirements.txt /var/www/requirements.txt
RUN pip install -r /var/www/requirements.txt