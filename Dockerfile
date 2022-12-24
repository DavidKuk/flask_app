# Docker file builds image, that contains flask application.
FROM alpine:latest
RUN apk update && \
    apk add vim && \
    apk add python3 && \
    apk add py3-pip && \
    pip3 install flask
ENV WK_DIR="/web_app"
RUN mkdir $WK_DIR
WORKDIR $WK_DIR
COPY  ./web_app.py .
ENV FLASK_DEBUG=False
CMD python3 web_app.py
