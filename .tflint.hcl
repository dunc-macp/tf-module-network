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

  varfile = ["example1.tfvars", "example2.tfvars"]
  variables = ["foo=bar", "bar=[\"baz\"]"]
}

rule "aws_instance_invalid_type" {
  enabled = true
}