#
# Cookbook Name:: chef-jenkins-plugins
# Recipe:: default
#

include_recipe 'jenkins::master'

# Plugins
node['jenkins']['server']['plugins'].each do |plugin|
  jenkins_plugin plugin do
    action [:install]
  end
end
