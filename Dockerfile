FROM openjdk:11

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y install \
  libreoffice-common \
  unoconv \
  hyphen-af hyphen-en-us \
  fonts-dejavu fonts-dejavu-core fonts-dejavu-extra \
  fonts-droid-fallback fonts-dustin fonts-f500 fonts-fanwood fonts-freefont-ttf fonts-liberation \
  fonts-lmodern fonts-lyx fonts-sil-gentium fonts-texgyre fonts-tlwg-purisa fonts-opensymbol && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /opt

COPY target/*.jar app.jar

ENTRYPOINT ["java", "-jar","app.jar"]