include_recipe 'pivotal_workstation::meta_osx_base'
include_recipe 'pivotal_workstation::meta_osx_development'
include_recipe 'pivotal_workstation::meta_ruby_development'

include_recipe 'workstation::packages'
include_recipe 'workstation::git_config'