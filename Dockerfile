FROM java:8-jdk

ADD build/libs/wildfly-example-swarm.jar /opt/wildfly-example-swarm.jar

EXPOSE 8181
ENTRYPOINT ["java", "-jar", "/opt/wildfly-example-swarm.jar"]
