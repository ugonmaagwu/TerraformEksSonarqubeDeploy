#Sonarqube on EKS
## Create EKS Cluster

Run the following command :

`terraform plan`
Check the plan

`terraform apply --auto-approve`
Verify EKS Creation 

##Setup EKS Config

Use following command to setup eks config 
`aws eks update-kubeconfig --name <EKS_CLUSTER_NAME> --region <REGION>`

## Deploy Sonarqube in 2 steps
### Step 1
CD to k8s directory
`cd k8s/`
Run the following 
`kubectl apply -f pgsql`
Once PGSQL is created verify using the following command
`kubectl get pods`
Check if pgsql is running
### Step 2
First you need to update the pgsql Cluster IP Address in 
the k8s.yaml
Fetch IP Address using 
`kl get svc`
Grab the CLUSTER-IP Corresponding to postgresql-service
and replace it in k8s.yaml in lines 42, 44, 58.

Run k8s.yaml
`kubectl apply -f k8s.yaml`
Upon applying, fetch the Load balancer Details using 
`kl get svc`
Grab the DNS and hit it in the browser at port 9000.