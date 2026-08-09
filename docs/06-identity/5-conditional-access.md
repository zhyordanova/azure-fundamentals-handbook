# Conditional Access

## Definition

Microsoft Entra Conditional Access is a policy engine that uses identity and access signals to determine whether access should be allowed, blocked, or subject to additional requirements.

Conditional Access policies work like if-then statements:

> If specific conditions are met, then apply specific access controls.

Conditional Access is evaluated after first-factor authentication.

## Why Conditional Access Exists

Not every sign-in attempt presents the same level of risk.

For example:

- A user signs in from a trusted office network.
- A user signs in from another country.
- A user signs in from an unmanaged device.
- A user accesses sensitive business applications.

Conditional Access enables organizations to apply different security requirements based on these conditions.

## Characteristics

Conditional Access can evaluate signals such as:

- User or group
- Target resource or application
- Device state or compliance
- Location
- Sign-in risk
- User risk

Policies can then apply controls such as:

- Allow access
- Block access
- Require MFA
- Require an authentication strength
- Require a compliant device
- Require a Microsoft Entra hybrid joined device

## Typical Use Cases

Conditional Access is commonly used for:

- Requiring MFA outside the corporate network
- Blocking access from specific countries
- Allowing access only from compliant devices
- Restricting access to sensitive applications

## Microsoft Trigger Words

If a question contains words such as:

- compliant device
- approved application
- require MFA
- block access
- location
- access policy
- sign-in conditions

Think:

> Conditional Access

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure feature requires MFA only under specific conditions?
- Which Azure feature blocks access from certain locations?
- Which Azure feature allows access only from compliant devices?

## Common Mistakes

❌ Thinking Conditional Access performs authentication.

Authentication is performed by Microsoft Entra ID.

Conditional Access evaluates the conditions under which access is granted.

❌ Thinking Conditional Access replaces MFA.

Conditional Access often requires MFA, but the two services have different purposes.

## Compare With

| Conditional Access | Multifactor Authentication |
|--------------------|---------------------------|
| Determines when policies apply | Provides additional authentication |
| Uses sign-in conditions | Uses multiple authentication factors |
| Evaluates risk and context | Verifies user identity |

## Exam Tip

Think of Conditional Access as:

> **IF → THEN**

Example:

> IF a user signs in from an untrusted location  
> THEN require MFA.

If the question asks:

> "Which feature provides the additional authentication factor?"

→ **MFA**

If it asks:

> "Which feature decides when MFA or another access requirement should apply?"

→ **Conditional Access**