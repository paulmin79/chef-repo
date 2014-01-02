name "base"
description "base runlist"
run_list "recipe[users::default]","recipe[sudo::default]"
default_attributes(
  "authorization" => {
    "sudo" => {
      "groups" => ["sysadmin"],
 "passwordless" => true
    }
  }
)
