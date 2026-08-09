# Azure Role-Based Access Control (RBAC)

## Definition

Azure Role-Based Access Control (Azure RBAC) is the Azure authorization system used to manage access to Azure resources.

Azure RBAC grants permissions by assigning roles to security principals at a specific scope.

Security principals can include:

- Users
- Groups
- Service principals
- Managed identities

## Why Azure RBAC Exists

Not every user should have the same permissions.

For example:

- Administrators manage Azure resources.
- Developers deploy applications.
- Auditors only view resources.

Azure RBAC provides fine-grained access control based on the principle of least privilege.

## Characteristics

Azure RBAC provides:

- Role-based authorization
- Least privilege access
- Built-in Azure roles
- Custom roles
- Scope-based permissions

RBAC determines **who can do what** on Azure resources.

## Built-in Roles

Common Azure RBAC roles include:

## Role Assignment

An Azure role assignment combines three elements:

1. Security principal — Who needs access?
2. Role definition — What are they allowed to do?
3. Scope — Where does the access apply?

### Owner

- Full access to resources
- Can assign roles

### Contributor

- Can create and manage resources
- Cannot assign roles

### Reader

- Can view resources
- Cannot make changes

## Scope

Azure RBAC can be applied at different scopes:

- Management Group
- Subscription
- Resource Group
- Individual Resource

Permissions assigned at higher scopes are inherited by lower scopes.

## Microsoft Trigger Words

If a question contains words such as:

- permissions
- role
- access
- authorization
- least privilege
- Reader
- Contributor
- Owner

Think:

> Azure RBAC

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure service controls permissions?
- Which Azure service follows the principle of least privilege?
- Which role can only view Azure resources?
- Which role can create resources but cannot assign permissions?

## Common Mistakes

❌ Thinking Azure RBAC authenticates users.

Authentication is performed by Microsoft Entra ID.

RBAC authorizes actions after authentication.

❌ Thinking Azure Policy manages permissions.

Azure Policy controls what can be deployed.

Azure RBAC controls who can perform actions.

## Compare With

| Azure RBAC | Azure Policy |
|------------|--------------|
| Controls who can perform actions | Controls what can be deployed |
| Authorization | Governance |
| Uses roles | Uses policies |

## Exam Tip

For Azure RBAC, think:

> **Who + What + Where**

**Who**

→ User, group, service principal, or managed identity

**What**

→ Role such as Reader, Contributor, or Owner

**Where**

→ Management Group, Subscription, Resource Group, or Resource

If the question is about **permissions on Azure resources**:

→ **Azure RBAC**

If the question is about enforcing resource configuration rules:

→ **Azure Policy**