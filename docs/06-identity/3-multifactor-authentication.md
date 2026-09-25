# Multifactor Authentication (MFA)

## Definition
Multifactor Authentication (MFA) requires two or more authentication factors to verify an identity.

Authentication factors include:

- something you know, such as a password or PIN;
- something you have, such as a phone or security key;
- something you are, such as a fingerprint or facial recognition.

## What Problem Does It Solve?
A password alone can be compromised. MFA strengthens authentication by requiring additional proof of identity.

## Passwordless Authentication
Passwordless authentication verifies identity without requiring a traditional password.

Examples can include:

- Windows Hello for Business;
- Microsoft Authenticator phone sign-in;
- FIDO2 security keys / passkeys.

```text
Two or more authentication factors
→ MFA

Authenticate without a traditional password
→ Passwordless
```

Passwordless and MFA are related security approaches, but they are not the same concept.

## Decision Factors
Ask whether the requirement is for **additional authentication**, **passwordless sign-in**, or a **policy that decides when an access control is required**.

```text
Require multiple authentication factors
→ MFA

Remove traditional password from sign-in
→ Passwordless authentication

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

## Exam Reasoning
```text
MORE AUTHENTICATION FACTORS?
→ MFA

NO TRADITIONAL PASSWORD?
→ Passwordless

IF location/device/risk condition THEN require MFA?
→ Conditional Access
```
