#
# Cookbook Name:: newrelic
# Attributes:: java-agent
#
# Copyright 2012-2014, Escape Studios
#

default['newrelic']['java-agent']['https_download'] = 'https://download.newrelic.com/newrelic/java-agent/newrelic-agent/3.7.1/newrelic-agent-3.7.1.jar'
default['newrelic']['java-agent']['jar_file'] = 'newrelic-agent-3.7.1.jar'
default['newrelic']['java-agent']['install_dir'] = '/usr/share/tomcat7/newrelic'
default['newrelic']['java-agent']['app_server_root_dir'] = '/usr/share/tomcat7'
#default['newrelic']['java-agent']['app_user'] = 'newrelic'
#default['newrelic']['java-agent']['app_group'] = 'newrelic'
default['newrelic']['java-agent']['app_user'] = 'tomcat7'
default['newrelic']['java-agent']['app_group'] = 'tomcat7'
default['newrelic']['java-agent']['audit_mode'] = false
default['newrelic']['java-agent']['log_file_count'] = 1
default['newrelic']['java-agent']['log_limit_in_kbytes'] = 0
default['newrelic']['java-agent']['log_daily'] = true
default['newrelic']['java-agent']['execute_install'] = true
#default['newrelic']['java-agent']['execute_install'] = false

# sudo java -jar newrelic.jar install -s /usr/share/tomcat7
