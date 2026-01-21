### Ansible laptop

Ansible playbook to setup laptop and keep it updated

## Usage

Run the complete playbook:
```bash
ansible-playbook -i inventory.yml main.yml
```

## Tags

This playbook uses a comprehensive tagging strategy that allows you to run specific subsets of tasks. Tags are organized in multiple layers for maximum flexibility:

### Category Tags (Broad Groups)

- `base` - Essential base system setup (updates, rpmfusion, base packages, codecs)
- `cloud-tools` - Cloud CLI tools (kubectl, oc, azure, gcloud)
- `dev-tools` - Development tools and environments (nodejs, golang, vscode)
- `applications` - End-user applications (chrome, slack, spotify, dropbox, gnome extensions)
- `repositories` - Git repository checkouts (password-store, unifi-controller)
- `configuration` - Configuration file setups

### Specific Tool/Service Tags

- `kubernetes` - Kubernetes tools (kubectl, oc, kubelogin)
- `azure` - Azure CLI and configuration
- `gcloud` - Google Cloud SDK
- `nodejs` - Node.js and npm packages
- `golang` - Go and GVM (Go Version Manager)
- `chrome` - Chrome browser installation
- `vscode` - Visual Studio Code repository
- `slack` - Slack application
- `spotify` - Spotify application
- `dropbox` - Dropbox application
- `flatpak` - Flatpak applications
- `snap` - Snap packages
- `gnome` - GNOME extensions

### Action Tags

- `packages` - Package installation tasks
- `repos` - Repository setup (yum/dnf/apt repositories)
- `config` - Configuration file tasks

### Example Usage

Install only base system components:
```bash
ansible-playbook -i inventory.yml main.yml --tags base
```

Install only cloud tools:
```bash
ansible-playbook -i inventory.yml main.yml --tags cloud-tools
```

Install specific tool (e.g., Azure):
```bash
ansible-playbook -i inventory.yml main.yml --tags azure
```

Install multiple specific tools:
```bash
ansible-playbook -i inventory.yml main.yml --tags "kubernetes,gcloud,nodejs"
```

Skip applications, install everything else:
```bash
ansible-playbook -i inventory.yml main.yml --skip-tags applications
```

Install only packages, skip configuration:
```bash
ansible-playbook -i inventory.yml main.yml --tags packages --skip-tags config
```

Install development tools only:
```bash
ansible-playbook -i inventory.yml main.yml --tags dev-tools
```

List all available tags:
```bash
ansible-playbook -i inventory.yml main.yml --list-tags
```
