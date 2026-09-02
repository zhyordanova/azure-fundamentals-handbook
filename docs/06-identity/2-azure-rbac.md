# Azure Role-Based Access Control (RBAC)

## Definition

Azure Role-Based Access Control (Azure RBAC) is Azure's authorization system for managing access to Azure resources.

A role assignment combines:

1. **Security principal** — who needs access;
2. **Role definition** — what they can do;
3. **Scope** — where the permissions apply.

## What Problem Does It Solve?

Not every identity should have the same permissions.

Azure RBAC supports least-privilege access by assigning only the permissions required for a job.

## Built-in Roles

| Role | Main capability |
|---|---|
| **Owner** | Full resource control and can manage access |
| **Contributor** | Create and manage resources but cannot manage access |
| **Reader** | View resources without changing them |
| **User Access Administrator** | Manage user access to Azure resources |

## Scope

Azure RBAC can be assigned at:

- Management Group;
- Subscription;
- Resource Group;
- Resource.

Permissions assigned at a higher scope can be inherited by lower scopes.

## Decision Factors

Ask:

> **Who should be allowed to perform which action, and where?**

```text
Read only
→ Reader

Manage resources but not access
→ Contributor

Full resource control + manage access
→ Owner

Manage user access
→ User Access Administrator
```

## Compare With

| Azure RBAC | Azure Policy | Resource Lock |
|---|---|---|
| Controls **who can do what** | Controls allowed/configured resource state | Prevents deletion or modification |
| Authorization | Governance | Protection from administrative changes |
| Roles + scopes | Policies | CanNotDelete / ReadOnly |

## Common Mistakes

Azure RBAC does not authenticate users. Authentication is handled by Microsoft Entra ID.

Azure RBAC also does not enforce resource configuration standards; that is the purpose of Azure Policy.

## Exam Reasoning

Use:

> **WHO + WHAT + WHERE → Azure RBAC**

If the requirement is about permissions on Azure resources, think **RBAC**.

If the requirement is about whether a resource configuration is allowed, think **Azure Policy**.
