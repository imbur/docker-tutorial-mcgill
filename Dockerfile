FROM java:latest

COPY example-webapp.jar .
COPY application.properties .

CMD java -jar example-webapp.jar
