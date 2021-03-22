locals {
  github_admins = flatten([
    for member in var.github_users : [
      for name, role in member.teams : name == "admins" ? [
        {
          name = member.name
          role = role
        }
      ] : []
    ]
  ])

  github_bots = flatten([
    for member in var.github_users : [
      for name, role in member.teams : name == "bots" ? [
        {
          name = member.name
          role = role
        }
      ] : []
    ]
  ])

  github_members = flatten([
    for member in var.github_users : [
      for name, role in member.teams : name == "maintainers" ? [
        {
          name = member.name
          role = role
        }
      ] : []
    ]
  ])
}

resource "github_membership" "general" {
  for_each = { for row in var.github_users : row.name => row }

  username = each.value.name
  role     = each.value.admin ? "admin" : "member"
}

resource "github_team" "admins" {
  name    = "admins"
  privacy = "closed"
}

resource "github_team_membership" "admins" {
  for_each = { for row in local.github_admins : row.name => row }

  team_id  = github_team.admins.id
  username = each.value.name
  role     = each.value.role
}

resource "github_team" "bots" {
  name    = "bots"
  privacy = "closed"
}

resource "github_team_membership" "bots" {
  for_each = { for row in local.github_bots : row.name => row }

  team_id  = github_team.bots.id
  username = each.value.name
  role     = each.value.role
}

resource "github_team" "members" {
  name    = "members"
  privacy = "closed"
}

resource "github_team_membership" "members" {
  for_each = { for row in local.github_members : row.name => row }

  team_id  = github_team.members.id
  username = each.value.name
  role     = each.value.role
}
