variable "docker_hub_username" {
  description = "Docker Hub username"
  type        = string
}

variable "image_name" {
  description = "Name of the Docker image"
  type        = string
  default     = "demo"
}

variable "image_tag" {
  description = "Tag for the Docker image"
  type        = string
  default     = "latest" # Always use latest
}
