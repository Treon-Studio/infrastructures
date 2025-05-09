# WADAH INFRASTRUCTURE

This repository contains infrastructure configurations and tools for managing Wadah's infrastructure, including server setup, infrastructure tools, and developer working environment configurations.

## Repository Structure

```
./
├── ansible.cfg          # Ansible configuration
├── configs/            # Application and tools configurations
├── docker/             # Docker compositions for various services
├── docs/               # Documentation
├── git-hooks/          # Git hooks for workflow automation
├── playbooks/          # Ansible playbooks
├── roles/              # Ansible roles
├── scripts/            # Automation scripts
└── requirements.yml    # Ansible requirements
```

## Core Components

1. **Configuration Management (Ansible)**
   - Server provisioning
   - Application deployment
   - Configuration management

2. **Docker Environments**
   - MinIO object storage
   - Kong API Gateway
   - Development services

3. **Developer Tools**
   - Git hooks for commit standardization
   - Automation scripts
   - Local development environment setup

4. **Documentation**
   - Setup guides
   - Architecture diagrams
   - Best practices

## Getting Started

1. Clone this repository
2. Install dependencies:
   ```bash
   # Install Ansible dependencies
   ansible-galaxy install -r requirements.yml
   ```
3. Follow the guides in docs/ for specific setup instructions

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit changes (use conventional commits)
4. Submit a pull request

## Maintenance

This repository is maintained by the Wadah DevOps team. For questions or issues, please create a new GitHub issue.