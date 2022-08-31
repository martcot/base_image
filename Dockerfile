FROM python:3.6-slim
COPY . /var/www/pfcetool
WORKDIR /var/www/pfcetool
RUN apt-get update -y && apt-get install libjpeg-dev build-essential libproj-dev gettext libgettextpo-dev netcat libxml2-dev libxslt-dev python-dev -y
RUN pip install rcssmin==1.0.6 rjsmin==1.0.12 --install-option="--without-c-extensions"
