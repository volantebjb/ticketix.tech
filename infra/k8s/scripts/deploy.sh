aws sts get-caller-identity

rm ~/.kube/config 

aws eks update-kubeconfig --region ap-southeast-1 --name ticketix-eks

kubectl config current-context

# Install NLB

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.10.0/deploy/static/provider/aws/deploy.yaml

# Install cert-manager

kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.14.3/cert-manager.yaml

# For staging

kubectl apply -f infra/k8s && kubectl apply -f infra/k8s/dev

# For production

kubectl apply -f infra/k8s && kubectl apply -f infra/k8s/prod