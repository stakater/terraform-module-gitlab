resource "gitlab_project" "project" {
  name = "${var.name}"
  namespace_id = "${var.group_id}"
  description = "${var.description}"
  visibility_level = "${var.visibility}" // can be private, internal, public
  default_branch = "${var.default_branch}"
}

resource "gitlab_branch_protection" "project_master" {
  count = "${var.enable_branch_protection}"
  project ="${gitlab_project.project.id}"
  branch = "master"
  merge_access_level = "developer"
  push_access_level = "master"

  depends_on = ["gitlab_project.project"]
}

resource "gitlab_project_hook" "project_webhook" {
  count = "${var.webhook_url == "" ? 0 : 1 }"
  project = "${gitlab_project.project.id}"
  url = "${var.webhook_url}"
  push_events = true
  merge_requests_events = true
}