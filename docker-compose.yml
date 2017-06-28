version: "2.1"
services:
  backend:
    build:
      context: ./spring-app
    environment:
      - MANAGEMENT_SECURITY_ENABLED=false
    ports:
      - "8081:8080"
      - "9009:9009"
    mem_limit: 300M
  frontend:
    build:
      context: ./angular-app
    ports:
      - "8080:8080"
    links:
      - backend
