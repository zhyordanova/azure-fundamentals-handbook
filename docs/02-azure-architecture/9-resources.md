# Azure Resources

## Definition
An Azure resource is an individual deployed instance of an Azure service.

Examples include:
- virtual machine
- storage account
- virtual network
- database

## Resource vs Azure Service
```text
Azure service
→ type/capability offered by Azure

Azure resource
→ deployed instance you create and manage
```

Example:

```text
Azure Virtual Machines
→ Azure service

vm-prod-01
→ Azure resource
```

## Place in the Hierarchy
```text
Subscription
    ↓
Resource Group
    ↓
Resource
```

Every resource belongs to a Resource Group.

## Resource Lifecycle
Azure resources can be created, configured, updated, monitored, and deleted through Azure's management layer.

## Exam Reasoning
If the question asks for the **actual deployed item**, choose Resource rather than Resource Group, Subscription, or Management Group.
