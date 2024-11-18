#BASE IMAGE
FROM openjdk:17-jdk-alpine

#working directory
WORKDIR /app

#copy code into container
COPY src/Main.java /app/Main.java

#compile code
RUN javac Main.java

#PORT EXPOSE
EXPOSE 8080
#run
CMD ["java", "Main"]
