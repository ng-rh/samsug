FROM openjdk:8-jdk-alpine

COPY target/incentivepayout-1.0.0.jar /tmp/camel/

WORKDIR /tmp/camel/

CMD ["java", "-jar", "incentivepayout-1.0.0.jar"] > /tmp/log/mail.log

EXPOSE 9080
