### Authorization Server v2

This is the template for Spring Boot OAuth2.0 Authorization Server (AS)

### Focused features in this implementation

* Clients loaded from data source

* Users loaded from data source

* Implementation for user-info endpoint with custom user details

* Opaque token implementation

Related [Blog](https://isurunuwanthilaka.github.io/engineering/2020/10/25/oauth2-jwt-hybrid-architecture)

## Docker Build

* Install dependencies for the first time

`mvn install`

* Package the project

`mvn clean package`

* Build docker image

`docker build -t oauth-as ./`

* Run docker container

`docker run -d -p 8081:8081 --name oauth-as oauth-as`