FROM digitaltl/mapnik
MAINTAINER Joshua Brooks "josh.vdbroek@gmail.com"

RUN 	useradd -ms /bin/bash tilestache
USER	tilestache
WORKDIR /home/tilestache
RUN 	mkdir /home/tilestache/app
COPY 	app /home/tilestache/app/

EXPOSE 8080
CMD ["uwsgi", "/home/tilestache/app/uwsgi.ini"]
