output "project_id" {
  value = "${gitlab_project.project.id}"
  depends_on = ["gitlab_project.project"]
}