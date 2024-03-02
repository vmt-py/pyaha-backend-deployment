# Kubernetes Manifests

This project contains Kubernetes manifests for deploying the following services:

- `traefik-prod`: A Traefik reverse proxy for handling incoming traffic.
- `db-prod`: A PostGIS database for storing data.
- `backend-prod`: A backend service for serving application logic.
- `nginx-prod`: An Nginx server for serving static files.

## Directory Structure

The project has the following directory structure:

```
k8s-manifests
├── traefik-prod
│   ├── deployment.yaml
│   └── service.yaml
├── db-prod
│   ├── deployment.yaml
│   ├── service.yaml
│   └── persistentvolumeclaim.yaml
├── backend-prod
│   ├── deployment.yaml
│   ├── service.yaml
│   └── ingress.yaml
├── nginx-prod
│   ├── deployment.yaml
│   ├── service.yaml
│   └── ingress.yaml
└── README.md
```

## Manifest Files

- `traefik-prod/deployment.yaml`: Defines the Kubernetes deployment for the `traefik-prod` service.
- `traefik-prod/service.yaml`: Defines the Kubernetes service for the `traefik-prod` service.
- `db-prod/deployment.yaml`: Defines the Kubernetes deployment for the `db-prod` service.
- `db-prod/service.yaml`: Defines the Kubernetes service for the `db-prod` service.
- `db-prod/persistentvolumeclaim.yaml`: Defines the persistent volume claim for the `db-prod` service.
- `backend-prod/deployment.yaml`: Defines the Kubernetes deployment for the `backend-prod` service.
- `backend-prod/service.yaml`: Defines the Kubernetes service for the `backend-prod` service.
- `backend-prod/ingress.yaml`: Defines the Kubernetes ingress for the `backend-prod` service.
- `nginx-prod/deployment.yaml`: Defines the Kubernetes deployment for the `nginx-prod` service.
- `nginx-prod/service.yaml`: Defines the Kubernetes service for the `nginx-prod` service.
- `nginx-prod/ingress.yaml`: Defines the Kubernetes ingress for the `nginx-prod` service.

Please refer to the individual manifest files for more details on each service's configuration.
```

This file provides an overview of the project structure and describes the purpose of each manifest file. It also provides instructions for further exploration of each service's configuration.