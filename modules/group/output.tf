output "group_id" {
  value = "${gitlab_group.group.id}"
  depends_on = ["gitlab_group.group"]
}