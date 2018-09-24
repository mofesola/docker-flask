FROM python:3.7
LABEL Maintainer = "Mofesola Babalola <me@mofesola.com>"

WORKDIR /usr/src/app
COPY app .

RUN pip3 install -r requirements.txt

EXPOSE 5000
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]
CMD ["start"]