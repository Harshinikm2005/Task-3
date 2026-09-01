terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = ">= 3.0.2"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:alpine"
  keep_locally = false
}

resource "docker_container" "custom_web" {
  image = docker_image.nginx.image_id
  name  = "elevate_custom_web"

  ports {
    internal = 80
    external = 8081
  }

  upload {
    file    = "/usr/share/nginx/html/index.html"
    content = "<h1>Elevate Labs Task 3 - Terraform Docker Provisioning Successful!</h1>"
  }
}
