# Manifiestos de Kubernetes

Este proyecto contiene los manifiestos de Kubernetes para desplegar los siguientes servicios:

- `traefik-prod`: Un proxy inverso Traefik para manejar el tráfico entrante.
- `db-prod`: Una base de datos PostGIS para almacenar datos.
- `backend-prod`: Un servicio backend para servir la lógica de la aplicación.
- `nginx-prod`: Un servidor Nginx para servir archivos estáticos.

# Instalar el operador de crunchy data

kubectl apply -k db-prod/install-operator/namespace
kubectl apply --server-side -k db-prod/install-operator/default

# Crear el cluster de la base de datos:
kubectl apply -k db-prod/install-database

# Crear el servicio de redis:
kubectl apply -k redis

# Crear los secrets necesarios para hacer pull de la imagen:
kubectl create secret docker-registry gitlab-registry \
  --docker-server=registry.gitlab.com \
  --docker-username=<tu-username> \
  --docker-password=<tu-token> \
  --namespace=pyaha-backend

# Generar el secreto de Django:
bash generate-django-secret.bash

# Crear el servicio de celery:
kubectl apply -f backend-prod/celery-deployment.yaml

# Crear el servicio backend:
kubectl apply -f backend-prod/backend-deployment.yaml

## Para eliminarlo
kubectl delete -f backend-prod/backend-deployment.yaml

kubectl create secret docker-registry gitlab-registry \
  --docker-server=registry.gitlab.com \
  --docker-username=testkubernetes \
  --docker-password=gldt-p3Zf_c5ARSkSxH43VScZ \
  --namespace=pyaha-backend