#
# Cookbook:: workstation
# Recipe:: setup
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#

package 'tree'

#
# The template, named '/etc/motd' is created
#   with the source 'motd.erb'
#
# @see https://docs.chef.io/resource_template.html
#
# The template file, named 'motd.erb' can be found in the
#   the templates folder under default. This means for all platforms:
#
# @see https://docs.chef.io/resource_template.html#file-specificity
#
template '/etc/motd' do
  source 'motd.erb'

  mode '0644'
  owner 'root'
  group 'root'
end