output "repository_url" {
    value = aws_ecr_repository.image_repo.repository_url
}
output "repository_name" {
   value = aws_ecr_repository.image_repo.name
}