FROM python:latest
LABEL maintainer="divassnyk"
COPY main.py /
CMD ["python", "./main.py"]
