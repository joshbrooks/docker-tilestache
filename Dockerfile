FROM digitaltl/mapnik:latest

MAINTAINER Joshua Brooks "josh.vdbroek@gmail.com"
ENV DEBIAN_FRONTEND=noninteractive
RUN pip install gunicorn

# Requirements for Pillow
RUN apt-get install -y python-dev libjpeg8 zlib1g libtiff5 libfreetype6 liblcms2-2 libwebp5 libtk8.6
RUN apt-get install -y libjpeg8-dev zlib1g-dev libtiff5-dev libfreetype6-dev

RUN pip install -U Pillow modestmaps simplejson werkzeug
RUN pip install tilestache

RUN apt-get install -y libgeos-c1 libgeos-3.4.2
RUN apt-get install -y libgeos-dev
RUN pip install shapely
RUN mkdir -p /webapps/tilestache
COPY tilestache /webapps/tilestache/
COPY tilestache/fonts/* /usr/local/lib/python2.7/dist-packages/mapnik/plugins/fonts/

# Patch for PIL=3.0 not having the "fromstring" method
RUN sed -i 's/Image.fromstring/Image.frombytes/' /usr/local/lib/python2.7/dist-packages/TileStache/Mapnik.py
RUN sed -i 's/Image.fromstring/Image.frombytes/' /usr/local/lib/python2.7/dist-packages/TileStache/Pixels.py

EXPOSE 8080
CMD ["sh", "/webapps/tilestache/gunicorn_start.sh"]
