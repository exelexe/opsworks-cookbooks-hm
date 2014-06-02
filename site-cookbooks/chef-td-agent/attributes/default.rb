# get data bag data
keys = Chef::EncryptedDataBagItem.load("api-key", "api-keys")
default[:td_agent][:treasure_data] = keys["treasure-data"]
default[:td_agent][:aws_access_key] = keys["aws-access-key"]
default[:td_agent][:aws_secret_key] = keys["aws-secret-key"]

default[:td_agent][:plugins] = [
    "plaintextformatter"
]

default[:td_agent][:includes] = false
default[:td_agent][:default_config] = true
default[:td_agent][:version] = '1.1.19'
default[:td_agent][:pinning_version] = false
