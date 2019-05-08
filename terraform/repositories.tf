resource "github_repository" "homebrew-kleister" {
  name               = "homebrew-kleister"
  description        = "Kleister: Homebrew"
  homepage_url       = "https://kleister.tech"
  has_issues         = true
  has_wiki           = false
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  has_downloads      = false
  topics = ["homebrew", "formula"]
}

resource "github_repository" "kleister-android" {
  name               = "kleister-android"
  description        = "Kleister: Android client"
  homepage_url       = "https://kleister.tech"
  has_issues         = true
  has_wiki           = false
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  has_downloads      = false
  topics = ["android", "client"]
}

resource "github_repository" "kleister-api" {
  name               = "kleister-api"
  description        = "Kleister: API server"
  homepage_url       = "https://kleister.tech"
  has_issues         = true
  has_wiki           = false
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  has_downloads      = false
  topics = ["api", "server", "golang"]
}

resource "github_repository" "kleister-cli" {
  name               = "kleister-cli"
  description        = "Kleister: CLI client"
  homepage_url       = "https://kleister.tech"
  has_issues         = true
  has_wiki           = false
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  has_downloads      = false
  topics = ["cli", "golang", "client"]
}

resource "github_repository" "kleister-desktop" {
  name               = "kleister-desktop"
  description        = "Kleister: Desktop client"
  homepage_url       = "https://kleister.tech"
  has_issues         = true
  has_wiki           = false
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  has_downloads      = false
  topics = ["desktop", "client"]
}

resource "github_repository" "kleister-docs" {
  name               = "kleister-docs"
  description        = "Kleister: Documentation"
  homepage_url       = "https://kleister.tech"
  has_issues         = true
  has_wiki           = false
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  has_downloads      = false
  topics = ["documentation", "docs", "hugo"]
}

resource "github_repository" "kleister-go" {
  name               = "kleister-go"
  description        = "Kleister: SDK for Go"
  homepage_url       = "https://kleister.tech"
  has_issues         = true
  has_wiki           = false
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  has_downloads      = false
  topics = ["sdk", "golang", "go", "openapi", "swagger"]
}

resource "github_repository" "kleister-infra" {
  name               = "kleister-infra"
  description        = "Kleister: Infrastructure"
  homepage_url       = "https://kleister.tech"
  has_issues         = true
  has_wiki           = false
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  has_downloads      = false
  topics = ["infrastructure", "ansible", "terraform", "provsioning"]
}

resource "github_repository" "kleister-ios" {
  name               = "kleister-ios"
  description        = "Kleister: iOS client"
  homepage_url       = "https://kleister.tech"
  has_issues         = true
  has_wiki           = false
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  has_downloads      = false
  topics = ["ios", "apple", "client"]
}

resource "github_repository" "kleister-js" {
  name               = "kleister-js"
  description        = "Kleister: SDK for Javascript"
  homepage_url       = "https://kleister.tech"
  has_issues         = true
  has_wiki           = false
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  has_downloads      = false
  topics = ["sdk", "javascript", "js", "openapi", "swagger"]
}

resource "github_repository" "kleister-php" {
  name               = "kleister-php"
  description        = "Kleister: SDK for PHP"
  homepage_url       = "https://kleister.tech"
  has_issues         = true
  has_wiki           = false
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  has_downloads      = false
  topics = ["sdk", "php", "openapi", "swagger"]
}

resource "github_repository" "kleister-python" {
  name               = "kleister-python"
  description        = "Kleister: SDK for Python"
  homepage_url       = "https://kleister.tech"
  has_issues         = true
  has_wiki           = false
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  has_downloads      = false
  topics = ["sdk", "python", "openapi", "swagger"]
}

resource "github_repository" "kleister-ruby" {
  name               = "kleister-ruby"
  description        = "Kleister: SDK for Ruby"
  homepage_url       = "https://kleister.tech"
  has_issues         = true
  has_wiki           = false
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  has_downloads      = false
  topics = ["sdk", "ruby", "openapi", "swagger"]
}

resource "github_repository" "kleister-scripts" {
  name               = "kleister-scripts"
  description        = "Kleister: Scripting"
  homepage_url       = "https://kleister.tech"
  has_issues         = true
  has_wiki           = false
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  has_downloads      = false
  topics = ["script", "bash", "provision"]
}

resource "github_repository" "kleister-ui" {
  name               = "kleister-ui"
  description        = "Kleister: Web UI"
  homepage_url       = "https://kleister.tech"
  has_issues         = true
  has_wiki           = false
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  has_downloads      = false
  topics = ["ui", "nodejs"]
}

resource "github_repository" "go-forge" {
  name               = "go-forge"
  description        = "Library for Forge"
  homepage_url       = ""
  has_issues         = true
  has_wiki           = false
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  has_downloads      = false
  topics = ["forge", "golang"]
}

resource "github_repository" "go-mcupdater" {
  name               = "go-mcupdater"
  description        = "Library for McUpdater"
  homepage_url       = ""
  has_issues         = true
  has_wiki           = false
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  has_downloads      = false
  topics = ["mcupdater", "golang"]
}

resource "github_repository" "go-minecraft" {
  name               = "go-minecraft"
  description        = "Library for Minecraft"
  homepage_url       = ""
  has_issues         = true
  has_wiki           = false
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  has_downloads      = false
  topics = ["minecraft", "golang"]
}
