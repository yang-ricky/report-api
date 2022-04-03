FROM python:3.10.1-alpine

RUN ln -sf /usr/share/zoneinfo/Asia/Beijing/etc/localtime

RUN echo 'Asia/Shanghai' > /etc/timezone

WORKDIR /app

RUN pip3 install fastapi uvicorn

COPY ./main.py /app/main.py

EXPOSE 8080

CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "8080"]