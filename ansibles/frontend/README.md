# Frontend Infrastructure Playbooks

This directory contains Ansible playbooks for managing and deploying frontend infrastructure components.

## Prerequisites

Before running these playbooks, ensure you have:

1. Ansible installed on your control node
2. SSH access to target servers
3. Proper inventory configuration
4. Ansible vault password file (if using encrypted variables)

## Directory Structure

```
frontend/
├── playbooks/         # Contains all frontend-related playbooks
├── ansible.cfg        # Ansible configuration file
├── .vault-password    # Vault password file (git-ignored)
└── README.md         # This file
```

## Available Playbooks

### Host Setup
```sh
ansible-playbook -i inventory.yaml playbooks/00-host-setup.yaml
```
- Configures basic host settings
- Sets up SSH configuration
- Configures security settings

### Server Health Check
```sh
ansible-playbook -i inventory.yaml playbooks/08-run-ping.yaml
```
- Performs basic connectivity test
- Verifies server health
- Checks system resources

### MicroK8s Installation
```sh
ansible-playbook -i inventory.yaml playbooks/06-install-microk8s.yml
```
- Installs MicroK8s
- Configures basic addons
- Sets up Kubernetes environment

## SSH Configuration

Default SSH port has been changed for security. To access the server:
```sh
ssh -p 10123 versatile@103.217.210.77
```

## Inventory Configuration

1. Create or modify `inventory.yaml` with your server details:
```yaml
all:
  hosts:
    frontend_server:
      ansible_host: your_server_ip
      ansible_user: your_user
      ansible_port: 10123  # Custom SSH port
```

2. Verify inventory connectivity:
```sh
ansible all -i inventory.yaml -m ping
```

## Security Notes

1. The `.vault-password` file is git-ignored for security
2. Use encrypted variables for sensitive data
3. Always use SSH keys instead of passwords
4. Keep the custom SSH port (10123) configuration secure

## Best Practices

1. Always test playbooks in a staging environment first
2. Use `--check` flag for dry-runs
3. Keep playbooks idempotent
4. Document any changes to playbooks
5. Use tags for selective execution

## Troubleshooting

If you encounter issues:

1. Verify SSH connectivity
2. Check inventory file configuration
3. Ensure proper permissions
4. Review ansible.cfg settings
5. Check playbook syntax:
```sh
ansible-playbook --syntax-check playbook.yml
```

## Contributing

1. Create descriptive commit messages
2. Test playbooks before committing
3. Update this README when adding new playbooks
4. Follow Ansible best practices