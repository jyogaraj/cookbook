#
# Cookbook:: weblayer
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package "httpd" do
    retries 3
    retry_delay 5
end

service 'httpd' do
    action [:enable, :start]
end

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

['php','php-common','php-pear','php-cli','php-pdo','php-fpm','php-json','php-mysqlnd','php-cgi','php-mbstring','php-xml', 'php-zip'].each do |package|
    package "#{package}" do
        retries 3
        retry_delay 5
    end
end
