# get data bag data
keys = Chef::EncryptedDataBagItem.load("api-key", "api-keys")

default[:td_agent][:api_key] = keys["treasure-data"]

default[:td_agent][:plugins] = []

default[:td_agent][:includes] = false
default[:td_agent][:default_config] = true
default[:td_agent][:version] = '1.1.19'
default[:td_agent][:pinning_version] = false
