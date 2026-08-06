# Conditional Access

## Definition

Conditional Access is a Microsoft Entra ID security feature that evaluates specific conditions during user sign-in and automatically applies access policies.

It enables organizations to allow, block, or require additional authentication based on predefined rules.

Conditional Access is often described as the "if-then" engine of Microsoft Entra ID.

## Why Conditional Access Exists

Not every sign-in attempt presents the same level of risk.

For example:

- A user signs in from a trusted office network.
- A user signs in from another country.
- A user signs in from an unmanaged device.
- A user accesses sensitive business applications.

Conditional Access enables organizations to apply different security requirements based on these conditions.

## Characteristics

Conditional Access evaluates conditions such as:

- User or group
- Application
- Device compliance
- Location
- Risk level

Based on the configured policy, Azure can:

- Allow access
- Block access
- Require Multifactor Authentication (MFA)
- Require a compliant device

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

Microsoft almost always uses phrases such as:

- compliant device
- approved application
- require MFA
- location
- access policy

These phrases almost always indicate:

> **Conditional Access**

If the question asks only for an additional authentication factor, the correct answer is usually **Multifactor Authentication (MFA)**.