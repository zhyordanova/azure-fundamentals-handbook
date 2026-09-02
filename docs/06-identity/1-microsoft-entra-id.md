# Microsoft Entra ID

## Definition

Microsoft Entra ID is Microsoft's cloud-based identity and access management (IAM) service.

It manages identities such as users and groups and supports secure sign-in to Microsoft cloud services, third-party applications, and custom applications.

Microsoft Entra ID was formerly known as Azure Active Directory (Azure AD).

## What Problem Does It Solve?

Organizations need a central identity platform instead of maintaining separate identities for every application.

Microsoft Entra ID provides identity management and authentication capabilities for cloud environments.

## Key Characteristics

Microsoft Entra ID provides:

- user and group management;
- authentication;
- enterprise application integration;
- support for MFA and Conditional Access;
- support for external collaboration.

## Decision Factors

First determine whether the requirement is about **identity** or **permissions on Azure resources**.

```text
Manage users, groups, identities, or sign-in
→ Microsoft Entra ID

Control what an authenticated identity can do to Azure resources
→ Azure RBAC
```

## Compare With

| Microsoft Entra ID | Azure RBAC |
|---|---|
| Manages identities | Manages Azure resource permissions |
| Supports authentication | Provides authorization |
| Users, groups, sign-in | Roles and scopes |

## Common Mistakes

Microsoft Entra ID does not replace Azure RBAC.

```text
WHO ARE YOU?
→ Authentication / Microsoft Entra ID

WHAT CAN YOU DO TO AN AZURE RESOURCE?
→ Authorization / Azure RBAC
```

Microsoft Entra roles and Azure RBAC roles are also different: Entra roles manage Entra administrative capabilities, while Azure RBAC roles manage access to Azure resources.

## Exam Reasoning

If the scenario asks for centralized cloud identity management, authentication, users, groups, or sign-in:

→ **Microsoft Entra ID**

If it asks which authenticated user can perform which action on an Azure resource:

→ **Azure RBAC**
