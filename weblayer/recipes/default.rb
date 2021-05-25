#
# Cookbook:: weblayer
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package "amazon-linux-extras" do
  retries 3
  retry_delay 5
end

execute 'enable php' do
    command "amazon-linux-extras enable php7.4"
end

execute 'clean metadata' do
    command "yum clean metadata"
end

['libzip','php-cli','php-common','php-json',' php','libxslt','php-xml','oniguruma','php-mbstring'].each do |package|
    package "#{package}" do
        retries 3
        retry_delay 5
    end
end

package "httpd" do
    retries 3
    retry_delay 5
end

service 'httpd' do
    action [:enable, :start]
end