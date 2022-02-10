FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN testosint create-db
RUN testosint populate-db
RUN testosint add-user -u admin -p admin
EXPOSE 5000
CMD ["testosint", "run"]
