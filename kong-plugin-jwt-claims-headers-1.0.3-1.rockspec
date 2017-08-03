package = "kong-plugin-jwt-claims-headers"
version = "1.0.3-1"

source = {
  url = "https://github.com/hnq90/kong-plugin-jwt-claims-headers"
}

description = {
  summary = "A Kong plugin that will expose JWT claims as request headers",
  license = "MIT"
}

dependencies = {
  "lua ~> 5.1"
}

local pluginName = "jwt-claims-headers"

build = {
  type = "builtin",
  modules = {
    ["kong.plugins." .. pluginName .. ".handler"] = "kong/plugins/" ..pluginName.. "/handler.lua",
    ["kong.plugins." .. pluginName .. ".schema"]  = "kong/plugins/" ..pluginName.. "/schema.lua"
  }
}
