GCP Project Deploying Python App 
# Infrastructure Components
![GCP-Project](https://user-images.githubusercontent.com/118537759/219687279-8204b48d-0e94-4326-90ac-e8f1dfb93220.jpeg)
# Requires to Start Project
- Terraform
- Docker

# Build docker image from docker file  - Push the image to GKE (Should have an account)

* Build the Docker image  (docker build -t gcp-python-app )
* Tag Docker Image (docker tag gcp-python gcr.io/careful-trainer-377212/gcp-python-app)
* Push the Docker image to GKE `docker push (gcr.io/careful-trainer-377212/gcp-python-app)

# SSH to private-vm

* Get deployment files by git clone 
* Deploy this files to GKE 
* get service port with minikube IP to browse

