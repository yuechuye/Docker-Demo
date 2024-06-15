FROM openjdk:11.0-jre-buster
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$Tz /etc/localtime && echo $Tz > /etc/timezone
COPY Docker-Demo.jar /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
