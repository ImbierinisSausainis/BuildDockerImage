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

resource "docker_container" "java_web_app_container" {
  name  = "java-web-app-container"
  image = docker_image.docker_build.name  # Using the image built above
  ports {
    internal = 8080  # Exposed port inside the container
    external = 8080  # Exposed port on the host machine
  }
  restart = "always"  # Optionally, to ensure it restarts if it fails
}