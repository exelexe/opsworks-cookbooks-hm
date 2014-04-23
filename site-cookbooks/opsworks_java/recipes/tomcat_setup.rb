include_recipe 'opsworks_java::tomcat_install'
include_recipe 'opsworks_java::tomcat_service'

service 'tomcat' do
  action :enable
end

# for EBS-backed instances we rely on autofs
# chenge "service autofs restart" -> "service tomcat7 restart"
#bash '(re-)start autofs earlier' do
bash '(re-)start tomcat7 earlier' do
  user 'root'
  code <<-EOC
    service tomcat7 restart
  EOC
  notifies :restart, 'service[tomcat]'
end

include_recipe 'opsworks_java::tomcat_container_config'
#include_recipe 'apache2'
#include_recipe 'opsworks_java::apache_tomcat_bind'
