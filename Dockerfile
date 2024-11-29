FROM python:3-slim

RUN pip install gunicorn httpbin

EXPOSE 80
CMD ["/usr/local/bin/gunicorn", "--access-logfile", "-", "-b", "0.0.0.0:80", "httpbin:app"]
