FROM alpine:3.5 
COPY  requirements.txt /src/requirements.txt
RUN apk add --update python3 py-pip && pip install --upgrade pip && pip install -r /src/requirements.txt 
COPY app.py /src 
COPY buzz /src/buzz
CMD python /src/app.py