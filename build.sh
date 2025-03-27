ECR_REGISTRY="751631479229.dkr.ecr.us-east-1.amazonaws.com"
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $ECR_REGISTRY
docker build -t ecr-aula-aws .
docker tag ecr-aula-aws:latest $ECR_REGISTRY/ecr-aula-aws:latest
docker push $ECR_REGISTRY/ecr-aula-aws:latest