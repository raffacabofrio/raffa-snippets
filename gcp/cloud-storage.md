# Como hospedar um site estático no cloud storage?

```bash

# no gcp, crie o bucket, defina como público e obtenha a url
# llUsers:objectViewer

# login no google cloud cli
gcloud auth login

# faça o upload do conteúdo estático
gsutil -m rsync -R .output/public gs://static-site-poc2

# define arquivos padrões ( só precisa configurar uma vez )
gsutil web set -m index.html -e 404.html gs://static-site-poc2

```
