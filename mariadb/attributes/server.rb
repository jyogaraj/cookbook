default[:mysql][:server_root_password] = root_pw
default[:mysql][:name]                 = "mariadb"
default[:mysql][:bin_dir]              = "/usr/bin"
default[:mysql][:mysqladmin_bin]       = "#{node[:mysql][:bin_dir]}/mysqladmin"
default[:mysql][:mysql_bin]            = "#{node[:mysql][:bin_dir]}/mysql"