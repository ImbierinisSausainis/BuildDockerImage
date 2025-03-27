resource "docker_image" "docker_build" {
  name = "${var.docker_hub_username}/${var.image_name}:${var.image_tag}"
  build {
    context    = "../docker"
    dockerfile = "Dockerfile"
  }
}

resource "docker_registry_image" "demo" {
  name = docker_image.docker_build.name
}
