# Discovery server

## Description

### Technologies

* Java 17
* Spring Boot 3
* Maven
* Docker

## Download project files

Скачайте файлы проекта через терминал

```
git clone https://github.com/Ivanmc-007/by.javaguru.jd15.discovery-server.git
```

## Installation

### Run in Intellij IDEA

1. Откройте папку с проектом в Intellij IDEA
2. Найдите файл **pom.xml** и кликните по нему правой клавишей мыши. В открывшемся меню выберите пункт **Add as Maven
   Project**
3. Найдите java класс **DiscoveryServerApplication**, в котором расположена точка входа в проект.
4. Выполните команду **run**.

### Docker Setup

Make sure you have [Maven](https://maven.apache.org/) and [Docker Compose](https://docs.docker.com/compose/) installed.

1. In the terminal, navigate to the project's root directory.
2. Execute the following command to build the project and create the Docker image:

```
mvn clean install
docker compose up -d
```

After completing these steps, your project should be successfully installed and running.

## Additional

* server.port: 8761