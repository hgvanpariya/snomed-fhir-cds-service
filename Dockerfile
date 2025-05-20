# Build stage
FROM maven:3.8.4-openjdk-17-slim AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Run stage
FROM openjdk:17-jdk-slim
WORKDIR /app

# Copy the required data files
COPY CDS_Medication-Condition_Cards.xlsx /app/
COPY ATC_Route_Of_Administration_Snomed_DoseForm_Map.tsv /app/
COPY CDS_Medication-Medication_Cards.tsv /app/
COPY Snomed_Substance_DDDs.tsv /app/

# Copy the application JAR file
COPY target/*.jar app.jar

# Copy application.properties
COPY src/main/resources/application.properties /app/

# Set environment variables to link the data files
ENV RULES_MEDICATION_CONDITION_SPREADSHEET=/app/CDS_Medication-Condition_Cards.xlsx
ENV RULES_MEDICATION_MEDICATION_TSV=/app/CDS_Medication-Medication_Cards.tsv
ENV RULES_MEDICATION_DOSE_FORMS_TSV=/app/ATC_Route_Of_Administration_Snomed_DoseForm_Map.tsv
ENV RULES_MEDICATION_SUBSTANCE_DDD_TSV=/app/Snomed_Substance_DDDs.tsv

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/app.jar"]