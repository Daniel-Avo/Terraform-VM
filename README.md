# Terraform-VM

Simple Terraform project that creates a VM on AWS with already installed php and apache2 applications.

## Provider

In the provider section of the file, you can choose region and provide access and secret key to your AWS account.

## Resource

The resource part contains information about ami used and the instance type that we want to create. Besides that, it sets the user data that will install php7.4, apache2 and inject index.html site layout for the website.
