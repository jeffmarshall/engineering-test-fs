FROM python:2.7

# Copy files (TODO: only copy required files, not all)
ADD . /code
WORKDIR /code

# Update pip and install dependencies
RUN pip install --upgrade pip
RUN pip install web.py==0.51 psycopg2-binary==2.8.3 Pillow==6.0.0 geojson==2.4.1 shapely==1.6.4

# Start development web server
CMD ["python", "server.py", "1235"]
