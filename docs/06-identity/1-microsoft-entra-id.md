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

## Microsoft Entra Domain Services
Microsoft Entra Domain Services provides **managed domain services** for workloads that need traditional domain capabilities without requiring the organization to deploy and maintain domain controllers.

It supports capabilities such as:

- domain join;
- Group Policy;
- LDAP;
- Kerberos / NTLM authentication.

```text
Cloud identity and modern authentication
→ Microsoft Entra ID

Managed traditional domain capabilities
without managing domain controllers
→ Microsoft Entra Domain Services
```

A common scenario is supporting legacy applications that depend on traditional domain protocols.

## Decision Factors
First determine whether the requirement is about **identity**, **traditional managed domain capabilities**, or **permissions on Azure resources**.

```text
Manage users, groups, identities, or sign-in
→ Microsoft Entra ID

Need managed domain join / LDAP / Kerberos / NTLM
→ Microsoft Entra Domain Services

Control what an authenticated identity can do to Azure resources
→ Azure RBAC
```

## Compare With
| Service | Best fit |
|---|---|
| Microsoft Entra ID | Cloud identity and authentication |
| Microsoft Entra Domain Services | Managed traditional domain services |
| Azure RBAC | Authorization to Azure resources |

## Common Mistakes
Microsoft Entra ID does not replace Azure RBAC, and Microsoft Entra Domain Services is not the same service as Microsoft Entra ID.

## Exam Reasoning
```text
WHO ARE YOU / manage cloud identities?
→ Microsoft Entra ID

Legacy domain capabilities without managing DCs?
→ Microsoft Entra Domain Services

WHAT CAN YOU DO TO AN AZURE RESOURCE?
→ Azure RBAC
```
