FROM gradle:5.4.1-jdk8-slim as builder

COPY --chown=gradle:gradle todo-list-server /home/gradle/todo-list-server
WORKDIR /home/gradle/todo-list-server
RUN gradle build

FROM openjdk:8-jre-slim
WORKDIR /app
COPY --from=builder /home/gradle/todo-list-server/build/libs/todo-list-server-1.0.0.jar ./
CMD java -jar todo-list-server-1.0.0.jar