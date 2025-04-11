# sit323-2025-prac5p

## Containerised Calculator Microservice
This project is a containerised calculator that receives parameters via API calls then returns the result along with the HTTP status, via an Express server.

### How To Build Calculator Microservice Image:
---
There are two options to build this service:
- Docker File (Dockerfile)
- Docker Compose file (docker-compose.yml)

### Building Image Via Dockerfile:
To build the image via the Dockerfile, type in the following command in the terminal after logging into Docker:

`docker build . -t <desired_image_name>`

After Docker builds the image, you should see it on Docker Desktop.

Run the container using the following command:

`docker run <desired_image_name>`



### How To Access Calculator Microservice:
---
After building the image via one of the methods listed above, connect to the container using the following command:

`docker exec -it <container_name_or_id> <command>`

The "command" is the Curl HTTP request that will be sent to the Calculator Microservice API.

Eg: `curl -s http://localhost:3040/add/?n1=3&n2=4`

Note:

The container must be running in order to use this command. You can use the `docker ps` command to check whether the container is running, as well as get the container name/ID.

Alternatively, you can also run commands inside the container via Docker Desktop by the following steps:
1. Navigate to the Containers section (left side of screen)
2. Click the running container
3. Click the exec tab
4. Enter desired command, such as the example curl command listed above



Once in the container shell, you can then use the instructions below to interact with the Calculator Microservice as you please.

### How To Use Calculator Microservice:
---
- All required libraries have been installed and are included.
- Number validation is included to prevent crashes caused by invalid input.
- API requests can be posted either using curl or Postman.
- API requests follow this format:
    http://localhost:port_number/service_name/?n1=value&n2=value


1. 

Upon running the image as a container, you should have already seen the following message:
    
    "Hello, I'm listening to port 3040
    You can see my results on Postman or at http://localhost:3040"

2. Using Curl, lodge a HTTP GET request to the API in the following format: 
    http://localhost:port_number/service_name/?n1=value1&n2=value2

### Calculator Services:
---
- Logger (logger)
- Add (/add)
- Subtract (/subtract)
- Multiply (/multiply)
- Divide (/divide)
- Modulus (/modulo)
- Exponentiation (/exponentiate)
- Minimum (/minimum)
- Maximum (maximum)
- Random Number between a Given Range (/randomrange)
- Square Root (/squareroot)

### Logger (logger)
---

- Service that logs the result of each API call as well as the HTTP status of the request via the winston library in NodeJS.
- Runs on each request.
- Has no request methods.


### Add (/add)
---
Addition service that takes two parameters of numbers, adds them together, then returns the result along with the HTTP status.

Eg: HTTP GET http://localhost:3040/add/?n1=2&n2=2


### Subtract (/subtract)
---
Subtraction service that takes two parameters of numbers, subtracts them, then returns the result along with the HTTP status.

Eg: HTTP GET http://localhost:3040/subtract/?n1=2&n2=2

### Multiply (/multiply)
---
Multiplication service that takes two parameters of numbers, multiplies them, then returns the result along with the HTTP status.

Eg: HTTP GET http://localhost:3040/multiply/?n1=2&n2=2

### Divide (/divide)
---
Division service that takes two parameters of numbers, divides them, then returns the result along with the HTTP status.

Eg: HTTP GET http://localhost:3040/divide/?n1=2&n2=2

### Modulus (/modulo)
---
Modulus service that takes two parameters of numbers, performs a modulus operation, then returns the result along with the HTTP status.

Eg: HTTP GET http://localhost:3040/modulo/?n1=2&n2=2

### Exponentiation (/exponentiate)
---
Exponentiation service that takes two parameters of numbers, raises the first number (n1)to the power of the second number (n2), then returns the result along with the HTTP status.

Eg: HTTP GET http://localhost:3040/exponentiate/?n1=2&n2=2

### Minimum (/minimum)
---
Minimum service that takes two parameters of numbers, determines which number is the lowest, then returns the result along with the HTTP status.

Eg: HTTP GET http://localhost:3040/minimum/?n1=2&n2=2

### Maximum (maximum)
---
Minimum service that takes two parameters of numbers, determines which number is the highest, then returns the result along with the HTTP status.

Eg: HTTP GET http://localhost:3040/maximum/?n1=2&n2=2

### Random Number between a Given Range (/randomrange)
---
This service takes two parameters of numbers, generates a random number between the two numbers, then returns the result along with the HTTP status.

Eg: HTTP GET http://localhost:3040/randomrange/?n1=2&n2=2

### Square Root (/squareroot)
---
This service takes one parameter of a number, finds the square root of the number, then returns the result along with the HTTP status.

Eg: HTTP GET http://localhost:3040/squareroot/?n1=2