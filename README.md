# Kleister: Infra

[![General Workflow](https://github.com/kleister/kleister-infra/actions/workflows/general.yml/badge.svg)](https://github.com/kleister/kleister-infra/actions/workflows/general.yml) [![Join the Matrix chat at https://matrix.to/#/#kleister:matrix.org](https://img.shields.io/badge/matrix-%23kleister%3Amatrix.org-7bc9a4.svg)](https://matrix.to/#/#kleister:matrix.org) [![Codacy Badge](https://app.codacy.com/project/badge/Grade/214d2917f6a14c08b75fee7442b953f2)](https://app.codacy.com/gh/kleister/kleister-infra/dashboard?utm_source=gh&utm_medium=referral&utm_content=&utm_campaign=Badge_grade)

This repository defines the infrastructure used by this project, including setup
of subdomains and object storage buckets and what else is needed.

## Usage

We are using [Terraform][terraform] to provision all related parts. Every change
have to be submitted via pull requests, after merging the pull request the
changes are getting applied automatically by our CI system. It is possible to
execute everything from a workstation, but it's encouraged to keep it in the
hands of our CI system.

### Variables

To get access to the secrets you got to install the 1Password CLI and export the
environment variable `OP_SERVICE_ACCOUNT_TOKEN` which you can find in our shared
store, after that you can simply execute the commands below.

```console
cat << EOF >| .envrc
use flake . --impure

export CLOUDFLARE_EMAIL=$(op read op://Kleister/Cloudflare/username)
export CLOUDFLARE_API_KEY=$(op read op://Kleister/Cloudflare/token)

export AWS_ACCESS_KEY_ID=$(op read op://Kleister/Terraform/username)
export AWS_SECRET_ACCESS_KEY=$(op read op://Kleister/Terraform/password)
EOF

direnv allow
```

### Deployment

```console
bin/terraform init
bin/terraform plan
bin/terraform apply
```

## Security

If you find a security issue please contact
[kleister@webhippie.de](mailto:kleister@webhippie.de) first.

## Contributing

Fork -> Patch -> Push -> Pull Request

## Authors

-   [Thomas Boerger](https://github.com/tboerger)

## License

Apache-2.0

## Copyright

```console
Copyright (c) 2018 Thomas Boerger <thomas@webhippie.de>
```

[terraform]: https://www.terraform.io/
