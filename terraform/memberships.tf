resource "github_membership" "general" {
  count = "${length(keys(var.github_members))}"

  username = "${element(keys(var.github_members), count.index)}"
  role     = "${element(values(var.github_members), count.index)}"
}

resource "github_team" "maintainers" {
  name    = "maintainers"
  privacy = "closed"
}

resource "github_team_membership" "maintainers" {
  count = "${length(keys(var.maintainer_members))}"

  team_id  = "${github_team.maintainers.id}"
  username = "${element(keys(var.maintainer_members), count.index)}"
  role     = "${element(values(var.maintainer_members), count.index)}"
}

resource "github_team_repository" "maintainers" {
  count = "${length(keys(var.maintainer_repos))}"

  team_id    = "${github_team.maintainers.id}"
  repository = "${element(keys(var.maintainer_repos), count.index)}"
  permission = "${element(values(var.maintainer_repos), count.index)}"
}

resource "github_team" "bots" {
  name    = "bots"
  privacy = "closed"
}

resource "github_team_membership" "bots" {
  count = "${length(keys(var.bot_members))}"

  team_id  = "${github_team.bots.id}"
  username = "${element(keys(var.bot_members), count.index)}"
  role     = "${element(values(var.bot_members), count.index)}"
}

resource "github_team_repository" "bots" {
  count = "${length(keys(var.bot_repos))}"

  team_id    = "${github_team.bots.id}"
  repository = "${element(keys(var.bot_repos), count.index)}"
  permission = "${element(values(var.bot_repos), count.index)}"
}
