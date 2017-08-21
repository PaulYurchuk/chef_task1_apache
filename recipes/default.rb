#
# Cookbook:: task1_apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package [ "httpd", "php", "php-fpm"]

template "/var/www/html/info.php" do
	source "info.php.erb"
	owner "root"
	group "root"
	mode "0644"
	notifies :restart, "service[httpd]"
end

package 'httpd'

service 'httpd' do
  action [:enable, :start]
  supports :reload => true
end