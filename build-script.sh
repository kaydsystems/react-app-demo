#!/bin/bash
TAG=$1
ECR_REGISTRY="123456789012.dkr.ecr.us-west-2.amazonaws.com/my-app"

echo "Building Docker image..."
docker build -t $ECR_REGISTRY:$TAG .

echo "Pushing Docker image to ECR..."
docker push $ECR_REGISTRY:$TAG