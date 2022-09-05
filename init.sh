az login

ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/<Your Subscription ID>"
terraform fmt
terraform apply -auto-approve
az aks get-credentials --resource-group Azure_K8S --name Azure_K8S-k8s_cluster
kubectl get namespaces
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.6.
   / 1/aio/deploy/recommended.yaml
kubectl create serviceaccount dashboard -n default
kubectl create clusterrolebinding dashboard-admin -n default --clusterrole=
 / clustter-admin --serviceaccount=default:dashboard
kubectl get secret $(kubectl get serviceaccount dashboard -o jsonpath="{.secrets[0].name}") -o jsonpath="{.data.tocken}" | base64 --decode

az aks browse --resource-group Azure_K8S --name Azure_K8S-k8s_cluster

terraform apply -auto-approve
az extension add --name aks-preview
az aks update -n Azure_K8S-k8s_cluster -g Azure_K8S --attach-acr <NameOfAksContainerRegistries>

# command:
#  kubectl get svc --namespace #<production>
#  kubectl get configmap --namespace <production>
#  kubectl get events  --namespace production
# kubectl delete pods elasticsearch-0 --namespace production

kubectl describe PersistentVolumeClaim azure-elastic-persistent

kubectl get pvc azure-elastic-persistent #for data in your persistent volume.
# for forbidden by its access permissions on windows.
[Environment]::SetEnvironmentVariable("KUBECONFIG", $HOME + "\.kube\config", [Environme
ntVariableTarget]::Machine)

