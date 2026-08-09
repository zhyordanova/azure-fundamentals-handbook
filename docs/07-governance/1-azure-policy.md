# Azure Policy

## Definition

Azure Policy is an Azure governance service that helps organizations enforce standards and assess compliance across Azure resources.

Policies define rules that determine what resources can be created, how they must be configured, and whether they comply with organizational requirements.

## Why Azure Policy Exists

Organizations often need to ensure that Azure resources comply with internal standards and regulatory requirements.

Examples include:

- Allowing resources only in approved Azure regions
- Requiring specific resource tags
- Restricting virtual machine sizes
- Requiring encryption
- Preventing the deployment of non-compliant resources

Azure Policy helps automate these governance requirements.

## Characteristics

Azure Policy provides:

- Governance enforcement
- Compliance evaluation
- Automatic policy assignment
- Resource auditing
- Policy inheritance through Azure scopes

Policies can be assigned at different scopes:

- Management Group
- Subscription
- Resource Group

## Common Use Cases

Azure Policy is commonly used for:

- Restricting allowed Azure Regions
- Requiring mandatory resource tags
- Restricting Virtual Machine SKUs
- Enforcing encryption
- Auditing compliance

## Microsoft Trigger Words

If a question contains words such as:

- enforce
- compliance
- standards
- only allow
- require
- deny
- audit
- mandatory tags

Think:

> Azure Policy

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure service enforces company standards?
- Which Azure service restricts where resources can be deployed?
- Which Azure service requires tags on all resources?
- Which Azure service audits resource compliance?

## Common Mistakes

❌ Thinking Azure Policy controls user permissions.

Azure Policy controls **what** can be deployed.

Azure RBAC controls **who** can perform actions.

❌ Thinking Azure Policy organizes subscriptions.

Management Groups organize subscriptions.

Azure Policy enforces governance rules.

## Compare With

| Azure Policy | Azure RBAC |
|---------------|------------|
| Controls what can be deployed | Controls who can perform actions |
| Governance | Authorization |
| Uses policies | Uses roles |

## Exam Tip

Ask:

> "Is the requirement about who can do something, or what can be deployed?"

If the requirement is about:

- allowed regions;
- required tags;
- approved VM sizes;
- encryption;
- compliance;

→ **Azure Policy**

If the requirement is about permissions on Azure resources:

→ **Azure RBAC**

Remember:

> **Azure Policy = what can be deployed**  
> **Azure RBAC = who can perform actions**