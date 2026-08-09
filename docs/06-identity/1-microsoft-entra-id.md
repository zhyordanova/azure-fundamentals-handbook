# Microsoft Entra ID

## Definition

Microsoft Entra ID is Microsoft's cloud-based identity and access management (IAM) service.

It enables users to sign in and securely access Microsoft cloud services, third-party applications, and custom applications.

Microsoft Entra ID was formerly known as Azure Active Directory (Azure AD).

## Why Microsoft Entra ID Exists

Modern organizations need a centralized identity service that manages:

- Users
- Groups
- Applications
- Authentication
- Access to cloud resources

Instead of maintaining separate identities for every application, Microsoft Entra ID provides a single identity platform.

## Characteristics

Microsoft Entra ID provides:

- User authentication
- Identity management
- Group management
- Enterprise application integration
- Cloud identity services
- Support for security features such as MFA and Conditional Access

## Typical Use Cases

Microsoft Entra ID is commonly used for:

- Microsoft 365 authentication
- Azure Portal sign-in
- Enterprise application access
- Identity management
- Business-to-business (B2B) collaboration

## Microsoft Trigger Words

If a question contains words such as:

- identity
- authentication
- users
- groups
- sign in
- Microsoft Entra ID
- Azure AD

Think:

> Microsoft Entra ID

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure service manages identities?
- Which Azure service authenticates users?
- Which Azure service was formerly called Azure Active Directory?
- Which Azure service manages users and groups?

## Common Mistakes

❌ Thinking Microsoft Entra ID manages Azure resources.

Microsoft Entra ID manages identities.

Azure resources are managed through Azure Resource Manager.

Authorization to Azure resources is commonly controlled using Azure RBAC.

❌ Thinking Microsoft Entra ID is only for Azure.

Microsoft Entra ID also provides identity services for Microsoft 365 and thousands of third-party applications.

❌ Thinking Microsoft Entra roles and Azure RBAC roles are the same.

Microsoft Entra roles manage access to Microsoft Entra resources and administrative capabilities.

Azure RBAC roles manage access to Azure resources.

## Compare With

| Microsoft Entra ID | Azure RBAC |
|--------------------|------------|
| Identity management | Resource permissions |
| Authentication | Authorization |
| Users and groups | Roles and access |

## Exam Tip

First identify whether the question is about **identity** or **resource permissions**.

If the requirement is about:

- users;
- groups;
- authentication;
- sign-in;
- identities;

→ **Microsoft Entra ID**

If the requirement is about:

- who can manage an Azure resource;
- permissions on a subscription, resource group, or resource;

→ **Azure RBAC**

Remember:

> **Authentication = Who are you?**  
> **Authorization = What are you allowed to do?**