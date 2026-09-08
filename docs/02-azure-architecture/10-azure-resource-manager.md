# Azure Resource Manager (ARM)

## Definition
Azure Resource Manager (ARM) is the deployment and management layer for Azure resources.

## What Problem Does It Solve?
ARM provides a consistent management layer through which Azure resources can be created, updated, and deleted.

## Management Flow
```text
Azure Portal
Azure CLI
PowerShell
REST API
      ↓
Azure Resource Manager
      ↓
Resource Provider
      ↓
Azure Resource
```

## Key Capabilities
ARM supports resource deployment and management, consistent access control and governance integration, and declarative infrastructure deployment through templates.

## Decision Factors
```text
Create / update / delete / manage Azure resources
through Azure's common management layer
→ Azure Resource Manager
```

## ARM vs Resource Group
```text
ARM
→ management/deployment layer

Resource Group
→ logical container for resources
```

## Exam Reasoning
Do not confuse the management layer with a resource container. Portal, CLI, PowerShell, and REST operations ultimately interact with Azure through ARM.
