variable "github_users" {
  default = [
    {
      name  = "kleisterz"
      admin = true
      teams = {
        bots   = "maintainer"
        admins = "maintainer"
      }
    },
    {
      name  = "tboerger"
      admin = true
      teams = {
        members = "maintainer"
        admins  = "maintainer"
      }
    },
  ]
}

variable "server_list" {
  default = [
    {
      name    = "bous"
      type    = "cx11"
      image   = "ubuntu-20.04"
      dc      = "fsn1-dc14"
      backups = true
      metadata = {
        ansible_group_minio = true
        ansible_group_dl    = true
      }
    },
  ]
}

variable "ssh_keys" {
  default = [
    {
      name       = "drone"
      public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDM27pCw7BF54FQSs5bVyxN6eV7wYaBsSmT1DaRQ6VJzI/ChfhXsLvjqnS2TLX+EHv4hT6BJi1MFXAkOjAD5kWkc4+W38r+6oT41sp9+Hjjq6OU1U3ef83eJNJc4jN9SxFp/Kqlil8rgyBClJ0m42j61HpZduhOjUFwhwOBVZk31tI3I+Gacd3g5d7RSkPfnDoDxyV+o1Uc16q+yL9SLAZ1FYL+d0+US/sjsz0UIQfJ0Uk4MzimugJsBTmIrQFJIUQwdI0qUrRI+2WGkoyCwVO3b6fgLlPSq1/0TCnlMVC27EjY6G+XLqnxpEmvr1BrcQCmykqfUATcbnm+mQd67g9r"
    },
    {
      name       = "tboerger"
      public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCc1nE4kCs9WXEEbotF+0Rivnr/9I0fc56QLZTqIr4Rsl3iZcvVDgYJmh6rPcl9xKBptNo/jK1EJF/bm2APf6wIU5Q7tNjeIw5IMJnBRBfPdQujXumb1LZMGnQvPT/gHdpVZvPkYlKkBocOJGPG99GZL0FlXXpc4eDYrgCMfCzRFG1SbQWcUdipbJJgELmbiOy7c5eHtb9i51x7g99pC91WnpInuN4pa0AFHwDQpBhS8RSLFEAfWNNs4T3SiYiUUq0lIHBoIoTM8fTTzhshXAlGWuwsZ9c9luEAw+n4QL8oD9a2ycWTJ3JCRK3CC/+J2MqCROSL4zpVA7+PFrloScMV"
    },
  ]
}
