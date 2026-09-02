# Multifactor Authentication (MFA)

## Definition

Multifactor Authentication (MFA) requires two or more authentication factors to verify an identity.

Authentication factors include:

- something you know, such as a password or PIN;
- something you have, such as a phone or security key;
- something you are, such as a fingerprint or facial recognition.

## What Problem Does It Solve?

A password alone can be compromised. MFA strengthens authentication by requiring additional proof of identity.

## Decision Factors

Ask whether the requirement is for **additional authentication** or a **policy that decides when additional authentication is required**.

```text
Require multiple authentication factors
→ MFA

Require MFA only under certain conditions
→ Conditional Access
```

## MFA vs Conditional Access

| MFA | Conditional Access |
|---|---|
| Provides additional identity verification | Decides when access controls apply |
| Uses multiple authentication factors | Uses signals such as location, device, or risk |
| Authentication mechanism | Policy decision engine |

> Conditional Access can require MFA, but Conditional Access is not MFA.

## Common Mistakes

MFA does not decide whether a user is in a trusted location or using a compliant device.

Those conditions can be evaluated by Conditional Access.

MFA also does not necessarily mean password + code. It requires multiple factors, and modern authentication can include passwordless methods.

## Exam Reasoning

```text
MORE AUTHENTICATION FACTORS?
→ MFA

IF location/device/risk condition THEN require MFA?
→ Conditional Access
```
