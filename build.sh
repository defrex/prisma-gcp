#! /bin/bash

set -e

VERSION="${1:?Provide the Prisma version this script should use}"
PROJECT_ID="${2:?Provide the GCP Project ID}"
LOCATION="gcr.io/$PROJECT_ID/prisma:$VERSION"

docker build --build-arg tag=${VERSION} --tag=$LOCATION .
docker push $LOCATION

echo "Image pushed successfully to $LOCATION"