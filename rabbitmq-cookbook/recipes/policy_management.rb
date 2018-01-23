##
include_recipe 'rabbitmq::default'

node['rabbitmq']['policies'].each do |name, policy|
  rabbitmq_policy name do
    pattern policy['pattern']
    parameters policy['params']
    priority policy['priority']
    vhost policy['vhost']
    apply_to policy['apply_to']
    action :set
  end
end

node['rabbitmq']['disabled_policies'].each do |policy|
  rabbitmq_policy policy do
    action :clear
  end
end
