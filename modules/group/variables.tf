variable "name" {}

variable "path" {}

variable "description" {
  default = ""
}

variable "visibility" {
  default = "public"
}

variable "users" {
  type = "list"
  default = []
}

variable "parent_id" {}