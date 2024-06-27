tflint {
  required_version = ">= 0.50"
}

config {
  format = "compact"
  plugin_dir = "~/.tflint.d/plugins"

  call_module_type = "all"
  force = false
  disabled_by_default = false

  ignore_module = {
  }

  varfile = []
  variables = []

}

plugin "terraform" {
  enabled = true
  preset = "recommended"
  version = "0.7.0"
  source  = "github.com/terraform-linters/tflint-ruleset-terraform"
}
