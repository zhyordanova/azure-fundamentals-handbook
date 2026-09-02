# Hybrid Identity

## Definition

Hybrid Identity integrates on-premises identity systems, such as Active Directory Domain Services, with Microsoft Entra ID.

It provides a common identity experience across on-premises and cloud environments.

## What Problem Does It Solve?

Organizations moving to Azure or Microsoft 365 may already maintain identities on-premises.

Hybrid identity allows those organizations to integrate their existing identity environment with Microsoft Entra ID instead of maintaining unrelated cloud identities.

## Decision Factors

Ask whether the requirement is about **one identity across environments** or **one sign-in across applications**.

```text
On-premises Active Directory + Microsoft Entra ID
+ common/synchronized identity
→ Hybrid Identity

One sign-in for multiple applications
→ SSO
```

## Compare With

| Hybrid Identity | Single Sign-On |
|---|---|
| Integrates on-premises and cloud identity | Simplifies authentication across applications |
| Common identity across environments | One sign-in for many apps |
| Identity integration/synchronization | Authentication experience |

## Common Mistakes

Hybrid Identity and SSO solve different problems.

An organization can use hybrid identity and still use SSO as part of the user authentication experience.

## Exam Reasoning

```text
SAME IDENTITY ON-PREMISES + CLOUD?
→ Hybrid Identity

ONE SIGN-IN FOR MANY APPS?
→ SSO
```
