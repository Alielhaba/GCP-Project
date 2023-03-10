# $${\color{red}GCP Project For Deploying Python App}$$
## About the project:
*Project for deploying python app first by build the infrastructure by *Terraform* using GCP which consist of some resources defined in the image below , build docker image using *Docker* and deploy this image using Private Cluster using Private VM *

###                ______________________________________________________________________________________________

# *Infrastructure Components*
![GCP-Project](https://user-images.githubusercontent.com/118537759/219687279-8204b48d-0e94-4326-90ac-e8f1dfb93220.jpeg)


# *Requires to Start Project*

""IN YOUR LOCAL MACHINE""
- Install Terraform
- Install Docker



# *Build docker image from docker file*  - Push the image to GKE (Should have an account)

* Build the Docker image  
```
 docker build . -t devops-python 
```
![Bulid](https://user-images.githubusercontent.com/118537759/219817989-089117f7-911a-4256-b197-b4cfb818a2ff.png)

* Tag Docker Image 
```
docker tag devops-python gcr.io/ali-ali-378200/devops-py
```
![Taged image](https://user-images.githubusercontent.com/118537759/219821291-7d5051c9-2054-40e7-a2cf-fd11fcbe7ebc.png)
* Push the Docker image to GKE 
```
docker push gcr.io/ali-ali-378200/devops-py
```
![Push](https://user-images.githubusercontent.com/118537759/219821280-a752648b-305f-4e23-a3c9-46d136e9076d.png)
# *GCR Console*
![console](https://user-images.githubusercontent.com/118537759/219818162-5ac69710-7149-4e8d-8a5f-f8cddf95da49.png)



# *SSH to private-vm and follow this steps *

* Installing git
```
sudo apt update  
```
```
sudo apt install git  
```
![Git-installation](https://user-images.githubusercontent.com/118537759/219980768-4b1506e7-ae35-4411-80f9-990a5c055410.png)
 
* Get deployment files (yaml-files) from my repo 
```
git clone git@github.com:Alielhaba/GCP-Project.git
```
![Git-clone](https://user-images.githubusercontent.com/118537759/219980777-ded77139-f8e2-4ef6-a626-fb394b939d55.png)

* Connect Private VM to Private GKE 
```
gcloud container clusters get-credentials private-cluster --zone us-west1-b --project ali-ali-378200
```
![Connect-tocluster](https://user-images.githubusercontent.com/118537759/219980896-4f390f3b-0c8f-4d02-a157-fa66eaf04cb4.png)

* Deploy Pythom App 
```
kubectl create -f Yaml-files
```
![Deploy-App](https://user-images.githubusercontent.com/118537759/219980798-de90beec-3e2c-4135-8d85-c2e2cf1c83f6.png)

* Get service IP and Port to brows the Python-App 
```
kubectl get svc
```
![SVC-IP-Port](https://user-images.githubusercontent.com/118537759/219980806-84e86148-7840-43ac-bfe9-8287e6127c22.png)



# Python-App after deplying 
* (1)
![Screenshot from 2023-02-20 01-27-10](https://user-images.githubusercontent.com/118537759/219982029-76582483-2cd6-4bc2-87db-aa8feb2e82fc.png)

* (2)
![Screenshot from 2023-02-20 01-27-21](https://user-images.githubusercontent.com/118537759/219982037-882af726-22fd-4486-861b-5dc06efea098.png)


# $${\color{green}Thank You}$$

