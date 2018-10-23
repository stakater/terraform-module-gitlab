variable "name" {}

variable "group_id" {
  default = ""
}

variable "description" {
  default = ""
}

variable "visibility" {
  default = "private"
}

variable "enable_branch_protection" {
  default = false
}

variable "default_branch" {
  default = "master"
}

variable "webhook_url" {
  default = ""
}