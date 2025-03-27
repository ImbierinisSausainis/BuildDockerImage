output "docker_image_name" {
  description = "The full Docker image name"
  value       = docker_image.docker_build.name
}
