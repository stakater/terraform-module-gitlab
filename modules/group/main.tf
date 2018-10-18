# Add carbook group
resource "gitlab_group" "group" {
    name = "${var.name}"
    path = "${var.path}"
    description = "${var.description}"
    visibility_level = "${var.visibility}"
}

resource "gitlab_group_membership" "group_membership" {
  count = "${length(var.users)}"
  group_id = "${gitlab_group.group.id}"
  user_id = "${lookup(var.users[count.index], "user_id", 0)}"
  access_level = "${lookup(var.users[count.index], "access_level", "developer")}"
}