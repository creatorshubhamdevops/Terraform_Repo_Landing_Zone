rgs = {
  rg1 = {
    name     = "rg1-pearce"
    location = "East US"
  }
}

# trufflehog filesystem . --json > C:\Reports\trufflehog-report.json
# gitleaks dir . --report-format json --report-path ./secret.json
# gitleaks detect --source . --no-git --config .gitleaks.toml --report-format json --report-path gitleaks-report.json
# checkov -d . -o json > D:\DevOpsInsiders\Terraform\Module_lab\Root\dev\report.json
#  tflint --recursive > tflint-report.txt
# tflint --recursive --format json > tflint-report.json
# tfsec . --format json --out tfsec-report.json
