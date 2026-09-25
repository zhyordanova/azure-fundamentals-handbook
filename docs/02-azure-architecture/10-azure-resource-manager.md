# Azure Resource Manager (ARM)

## Definition
Azure Resource Manager (ARM) is the deployment and management layer for Azure resources.

## What Problem Does It Solve?
ARM provides a consistent management layer through which Azure resources can be created, updated, and deleted.

## Management Flow
```text
Azure Portal
Azure CLI
Azure PowerShell
REST API
      ↓
Azure Resource Manager
      ↓
Resource Provider
      ↓
Azure Resource
```

## ARM Templates
An ARM template is a **declarative JSON file** that defines the Azure resources and configuration to deploy.

ARM templates support Infrastructure as Code (IaC):

```text
Define desired infrastructure in code
        ↓
Deploy repeatedly and consistently
        ↓
Azure Resource Manager
```

Think:

```text
ARM
→ management / deployment layer

ARM template
→ declarative infrastructure definition
```

## Decision Factors
```text
Create / update / delete / manage Azure resources
through Azure's common management layer
→ Azure Resource Manager

Repeatable declarative Azure deployment
→ ARM template / Infrastructure as Code
```

## ARM vs Resource Group
```text
ARM
→ management/deployment layer

Resource Group
→ logical container for resources
```

## Exam Reasoning
Do not confuse the management layer with a resource container or deployment definition.

```text
MANAGE Azure resources
→ ARM

DEFINE repeatable infrastructure in JSON
→ ARM template

GROUP related Azure resources
→ Resource Group
```
