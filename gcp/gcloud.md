```bash

# primeiro passo. autentica na gcp
gcloud auth login

# define em que projeto estamos trabalhando
gcloud config set project PROJECT_ID

# dmostra em que projeto estamos trabalhando
gcloud config list

# obtem acesso ao cluster ( lens precisa disso pra funcionar )
gcloud container clusters get-credentials CLUSTER_ID --region=us-east1

```
