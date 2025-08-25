```bash

# em que cluster eu estou?
kubectl config current-context

# encontra um pod ( windows - usando o findstr no lugar do grep )
kubectl get pods --all-namespaces | findstr flyer

# port foward 
kubectl port-forward POD_ID 8081:8080 -n NAMESPACE

```

# esqueci um port-foward aberto. o que fazer?

```bash

# lista port-fowards abertos
Get-Process | Where-Object { $_.ProcessName -like "kubectl" } | Select-Object Id, ProcessName, CommandLine

# mata o port-foward
Stop-Process -Id 16524 -Force

```

# N8N

```bash

kubectl run n8n-poc `
>>   --rm -it `
>>   --image=n8nio/n8n `
>>   --namespace=default `
>>   --port=5678 `
>>   --env N8N_BASIC_AUTH_ACTIVE=true `
>>   --env N8N_BASIC_AUTH_USER=admin `
>>   --env N8N_BASIC_AUTH_PASSWORD=123456 `
>>   --command -- n8n

```

