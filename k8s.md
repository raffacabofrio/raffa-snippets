```bash

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
