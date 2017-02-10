return {
  no_consumer = true,
  fields = {
    uri_param_names = {type = "array", default = {"jwt"}},
    claims_to_include = {type = "array", default = {".*"}},
    continue_on_error = {type = "boolean", default = false},
    verify_exp = {type = "boolean", default = false}
  }
}
