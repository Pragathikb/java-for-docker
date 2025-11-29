#pull base img which gives all req tools and libs
FROM openjdk:17.0.2-jdk
#create folder where app code will be stored
WORKDIR /app
#copy src code from host machine to ur container
COPY Hello.java .
#compile app code
RUN javac Hello.java
#run appn
CMD ["java","Hello"]
