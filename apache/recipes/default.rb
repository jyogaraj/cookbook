#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package "httpd" do
  action :install
end

service "httpd" do
 action [:enable, :start]
end
