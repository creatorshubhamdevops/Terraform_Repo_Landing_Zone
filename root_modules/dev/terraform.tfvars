rgs = {
  rg1 = {
    name     = "rg-pearce"
    location = "East US"
  }
}

vnets = {
  vnet1 = {
    name                = "vnet1-pearce"
    resource_group_name = "rg-pearce"
    location            = "East US"
    address_space       = ["10.0.0.0/16"]
  }
}

subnets = {
  snet1 = {
    name                 = "frontend-subnet"
    resource_group_name  = "rg-pearce"
    virtual_network_name = "vnet1-pearce"
    address_prefixes     = ["10.0.1.0/24"]
  }

  snet2 = {
    name                 = "backend-subnet"
    resource_group_name  = "rg-pearce"
    virtual_network_name = "vnet1-pearce"
    address_prefixes     = ["10.0.2.0/24"]
  }

  snet3 = {
    name                 = "database-subnet"
    resource_group_name  = "rg-pearce"
    virtual_network_name = "vnet1-pearce"
    address_prefixes     = ["10.0.3.0/24"]
  }
  snet4 = {
    name                 = "appgateway-subnet"
    resource_group_name  = "rg-pearce"
    virtual_network_name = "vnet1-pearce"
    address_prefixes     = ["10.0.4.0/24"]
  }
  snet5 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "rg-pearce"
    virtual_network_name = "vnet1-pearce"
    address_prefixes     = ["10.0.5.0/24"]
  }
}


# trufflehog filesystem . --json > C:\Reports\trufflehog-report.json
# gitleaks dir . --report-format json --report-path ./secret.json
# gitleaks detect --source . --no-git --config .gitleaks.toml --report-format json --report-path gitleaks-report.json
# checkov -d . -o json > D:\DevOpsInsiders\Terraform\Module_lab\Root\dev\report.json
#  tflint --recursive > tflint-report.txt
# tflint --recursive --format json > tflint-report.json
# tfsec . --format json --out tfsec-report.json