## PDF (JODConverter) Rest API

This repository based on https://github.com/sbraconnier/jodconverter


This is a sample application of a rest api that uses the spring boot integration module of the Java OpenDocument Converter (JODConverter) project to offer document conversion capabilities. The goal was to emulate a LibreOffice Online server that
would support the customization of custom (known) load/store properties.

Once started, use your favorite browser and visit this page:

```
http://localhost:8081/swagger-ui.html
```

Maven install
```
mvn install
```

Docker use: 
```
docker build -t pdf/doc-converter . 
```
```
docker run -it -p 8084:8081 pdf/doc-converter
```