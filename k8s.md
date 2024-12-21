```bash

# encontra um pod ( windows - usando o findstr no lugar do grep )
kubectl get pods --all-namespaces | findstr flyer

# port foward 
kubectl port-forward POD_ID 8081:8080 -n NAMESPACE

```