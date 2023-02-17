GCP Project Deploying Python App 
# Infrastructure Components
![GCP-Project](https://user-images.githubusercontent.com/118537759/219687279-8204b48d-0e94-4326-90ac-e8f1dfb93220.jpeg)
# Requires to Start Project
""IN YOUR LOCAL MACHINE""
- Install Terraform
- Install Docker

# Build docker image from docker file  - Push the image to GKE (Should have an account)

* Build the Docker image  
```
 docker push gcr.io/ali-ali-378121/devops-py 
```
![Bulid](https://user-images.githubusercontent.com/118537759/219817989-089117f7-911a-4256-b197-b4cfb818a2ff.png)

* Tag Docker Image 
```
docker tag devops-python gcr.io/ali-ali-378121/devops-py
```
![Tag image](https://user-images.githubusercontent.com/118537759/219818028-6f6da12f-b1ed-41ff-b7ad-8a9c89dbb2ef.png)

* Push the Docker image to GKE 
```
docker push gcr.io/ali-ali-378121/devops-py
```
![Push to GCR](https://user-images.githubusercontent.com/118537759/219818061-e48ffc44-796f-4d13-a2e3-65a6f1c8d5ea.png)

# *GCR Console*
![console](https://user-images.githubusercontent.com/118537759/219818162-5ac69710-7149-4e8d-8a5f-f8cddf95da49.png)


# SSH to private-vm

* Get deployment files by
```
git clone 
```
* Deploy this files to GKE 
* get service port with minikube IP to browse

