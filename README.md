# Cloud Instances

This is a simplisitc way to quickly deploy GCE instances with various softwares preinstalled on them. The point of this repo is to have a better understanding of good practices with Terraform as well as brush up on said softwares.

## How to use
> Note: You will need to have a GCE account and terraform installed on your computer.
1) Clone this repo down:
```
git clone git@github.com:mshiroma14/CloudInstances.git
```
2) `cd CloudInstances`
3) Navigate to one of the folders that is NOT `terraformModule`
4) Create a `terraform.tf.vars` that contains the following:
```
variable "keypath" {
  value = pathToPublicKey
}
```
4) 
```
export GOOGLE_CLOUD_KEYFILE_JSON = path/to/yo/reds
terraform init
terraform plan
terraform apply
```
5) Profilt and start using your new GCE instances!

## How to remove
1) Navigate to the directory where you ran your `terraform` commands
2)
```
terraform destroy
```
