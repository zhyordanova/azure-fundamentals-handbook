# Azure Management Tools

## Definition
Azure provides multiple interfaces for managing resources. The underlying Azure resources are the same; the tools differ mainly in how administrators interact with them.

## Azure Portal
The Azure portal is a browser-based graphical interface for creating, configuring, and monitoring Azure resources.

```text
Graphical browser-based management
→ Azure Portal
```

## Azure Cloud Shell
Azure Cloud Shell is a browser-accessible shell environment for managing Azure resources without installing command-line tools locally.

Cloud Shell supports both:

- Bash, commonly used with Azure CLI;
- PowerShell, used with Azure PowerShell.

```text
Browser-based command-line environment
→ Azure Cloud Shell
```

## Azure CLI
Azure CLI is a cross-platform command-line tool for managing Azure resources. Azure CLI commands commonly begin with `az`.

```text
Cross-platform command line
→ Azure CLI
```

## Azure PowerShell
Azure PowerShell provides PowerShell cmdlets for managing Azure resources.

```text
PowerShell-based Azure administration
→ Azure PowerShell
```

## Decision Factors
| Requirement | Best fit |
|---|---|
| Browser-based graphical management | Azure Portal |
| Browser-based shell without local tool installation | Azure Cloud Shell |
| Cross-platform command-line automation | Azure CLI |
| PowerShell-based administration and automation | Azure PowerShell |

## Exam Reasoning
Do not confuse **Cloud Shell** with Azure CLI or Azure PowerShell.

```text
Cloud Shell
→ hosted shell environment

Azure CLI / Azure PowerShell
→ command-line management tools that can run in Cloud Shell
```
