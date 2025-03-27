ECR_REGISTRY="751631479229.dkr.ecr.us-east-1.amazonaws.com"
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $ECR_REGISTRY
docker build -t ecr-aws-aula .
docker tag ecr-aws-aula:latest $ECR_REGISTRY/ecr-aws-aula:latest
docker push $ECR_REGISTRY/ecr-aws-aula:latest