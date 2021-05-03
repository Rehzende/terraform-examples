
# Example of terraform script to create a virtual machine at GCP
# Install Terraform

## Import the HashiCorp public key
`curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -`

## Add the HashiCorp distribution URI as a package source
`sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"`

## Update the package list and install the Terraform
`sudo apt-get update && sudo apt-get install terraform`

# Install Gcloud SDK

## Add the Cloud SDK distribution URI as a package source

`echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list`

## Import the Google Cloud public key

`curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -`

## Update the package list and install the Cloud SDK
`sudo apt-get update && sudo apt-get install google-cloud-sdk`