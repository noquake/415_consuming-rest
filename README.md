# 415_consuming-rest
 Built within 415 Cloud Native Applications course at trinity College, this application focuses on creating restful applications that can communicate with each other within the same kubernetes deployment. 

# Installation

## Docker

Make sure that the Docker and Kubernetes Daemons are already running on your amachine for the follwing commands to run correctly.

Pull the docker image for this application and cd into the directory. 
``` bash
docker pull kwaagyei/consuming-rest:1.0.0
cd consuming-rest
```
Now, open a seperate terminal to manage the Quoters service and open the port-forwarding between the two applications we are about to run
```bash
kubectl run quoters --image=javajon/quoters:1.0.0 --port=8080
kubectl expose pod quoters --name=quoters
kubectl get all -l run=quoters
```
To start the port-forwarding, run
```bash
kubectl port-forward service/quoters 8080:8080
```
Now in your main terminal package and run this application.
```bash
./mvnw package
./mvnw spring-boot:run
```
In the "Info" section of the springboot aplications you should be seeing four seperate "Quotes" which should show the successful communication between the applications. 
