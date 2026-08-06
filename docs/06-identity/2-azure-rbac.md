# Azure Role-Based Access Control (RBAC)

## Definition

Azure Role-Based Access Control (RBAC) is the Azure authorization service that controls who can perform actions on Azure resources.

RBAC uses role assignments to grant users, groups, or applications the permissions they need.

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

Remember one simple rule:

**Entra ID answers "Who are you?"**

**RBAC answers "What are you allowed to do?"**

If Microsoft mentions:

- permissions
- roles
- Reader
- Contributor
- Owner

the correct answer is usually:

> **Azure RBAC**