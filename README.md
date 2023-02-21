# Kleister: Infra

[![General Workflow](https://github.com/kleister/kleister-infra/actions/workflows/general.yml/badge.svg)](https://github.com/kleister/kleister-infra/actions/workflows/general.yml) [![Join the Matrix chat at https://matrix.to/#/#kleister:matrix.org](https://img.shields.io/badge/matrix-%23kleister%3Amatrix.org-7bc9a4.svg)](https://matrix.to/#/#kleister:matrix.org)

This repository defines the infrastructure used by this project, including setup
of subdomains and S3 buckets.

## Development

### Variables

```console
cat << EOF >| .envrc
use flake

export GITHUB_TOKEN=$(gopass --password kleister/github/kleisterz)

export CLOUDFLARE_EMAIL=$(gopass --password kleister/cloudflare/email)
export CLOUDFLARE_API_KEY=$(gopass --password kleister/cloudflare/apikey)

export AWS_ACCESS_KEY_ID=$(gopass --password kleister/infra/access-key)
export AWS_SECRET_ACCESS_KEY=$(gopass --password kleister/infra/secret-key)
EOF
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
