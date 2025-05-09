# Terraform Infrastructure

Direktori ini berisi konfigurasi Infrastructure as Code menggunakan Terraform.

## Struktur

```
terraform/
├── environments/           # Environment-specific configurations
│   ├── development/
│   ├── staging/
│   └── production/
├── modules/               # Reusable Terraform modules
└── scripts/              # Helper scripts for Terraform operations
```

## Penggunaan

1. Pastikan Terraform sudah terinstall
2. Setup credentials cloud provider
3. Pilih environment yang sesuai
4. Jalankan:
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```
