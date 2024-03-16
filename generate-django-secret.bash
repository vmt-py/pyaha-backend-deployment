#!/bin/bash

# Genera una nueva clave secreta de Django
DJANGO_SECRET_KEY=$(openssl rand -base64 64)

# Usa kubectl para crear un Secret con la clave secreta
kubectl create secret generic django-secret \
    --from-literal=secret-key="$DJANGO_SECRET_KEY" \
    --namespace=pyaha-backend

# Verifica si el Secret se creó correctamente
if [ $? -eq 0 ]; then
    echo "El Secret 'django-secret' se ha creado correctamente."
else
    echo "Ha ocurrido un error al crear el Secret 'django-secret'."
fi
