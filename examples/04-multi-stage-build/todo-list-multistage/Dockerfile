FROM gradle:7-jdk17 AS build
COPY . /src
WORKDIR /src
RUN ["gradle", "bootJar", "--no-daemon"]

FROM ibm-semeru-runtimes:open-17-jre-focal
COPY --from=build /src/build/libs/todo-list-1.0.0.jar /app/
CMD ["java", "-jar", "/app/todo-list-1.0.0.jar"]