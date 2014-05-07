#
# Cookbook Name:: pkg-mng
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# Need to update package in order to install the Ruby2.1 

case node['platform']
when 'debian','ubuntu'
  execute 'dpkg --configure -a' do
    action :run
  end
  execute 'apt-get update' do
    action :run
  end
  execute 'apt-get install -y ruby ruby-dev rubygems libicu-dev libssl-dev libopenssl-ruby libxslt-dev libxml2-dev monit' do
    action :run
  end
  execute 'apt-get dist-upgrade -y' do
    action :run
  end

when 'centos','redhat','fedora','amazon'
  # TODO 
end  
