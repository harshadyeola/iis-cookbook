# IIS-RabbitMQ-OpsWorks

- This CFT automates the deployment of Windows IIS server and the clustered RabbitMQ via  AWS OpsWorks stack.
- AWS OpsWork service is used for the deployment as it can be used with CI/CD for easy deployment of the application updates with Chef Recipes.

## Contents:

### main.yml

This is the cloudformation template for deploying the OpsWorks Stack

### iis-cookbook
Chef recipes for iis server setup and Configuration

### rabbitmq-cookbook
Chef recipes for rabbitmq cluster setup
