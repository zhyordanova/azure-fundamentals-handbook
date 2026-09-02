# Conditional Access

## Definition

Microsoft Entra Conditional Access is a policy engine that uses identity and access signals to decide whether access should be allowed, blocked, or subject to additional requirements.

Think of it as:

> **IF condition → THEN access control**

## What Problem Does It Solve?

Not every sign-in has the same context or risk.

Conditional Access can evaluate signals such as:

- user or group;
- target resource or application;
- location;
- device state or compliance;
- sign-in or user risk.

It can then apply controls such as:

- allow access;
- block access;
- require MFA;
- require a compliant device.

## Decision Factors

Choose Conditional Access when access depends on **conditions or signals**.

```text
Require MFA for every applicable sign-in
→ MFA requirement

Require MFA only from an untrusted location
→ Conditional Access

Block access from a specific location
→ Conditional Access

Require a compliant device
→ Conditional Access
```

## Conditional Access vs MFA

| Conditional Access | MFA |
|---|---|
| Decides when access controls apply | Provides additional authentication |
| Uses context and signals | Uses multiple authentication factors |
| Can require MFA | Performs the additional verification |

## Common Mistakes

Conditional Access does not replace MFA.

It can **require** MFA as an access control.

Likewise, MFA itself does not evaluate location, device compliance, or risk to decide when it should be required.

## Exam Reasoning

```text
MORE FACTORS?
→ MFA

IF signal/condition THEN allow/block/require MFA?
→ Conditional Access
```

> **MFA = verification. Conditional Access = decision.**
