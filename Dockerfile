FROM eclipse-temurin:21-jdk-alpine
WORKDIR /app
COPY src/ /app/src/
RUN javac src/*.java
CMD java -cp src ServidorConcurrente ${PORT:-3000}
