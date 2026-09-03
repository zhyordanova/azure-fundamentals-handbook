# Software as a Service (SaaS)

## Definition

Software as a Service (SaaS) provides a complete application that users access and use without managing the underlying infrastructure or application platform.

## What Problem Does It Solve?

Use SaaS when the requirement is to consume a finished software application rather than build or manage the platform that runs it.

```text
Need finished application
+
Minimal infrastructure management
        ↓
SaaS
```

## Responsibilities

With SaaS, the provider manages most of the technology stack, including:

- physical infrastructure
- operating system
- platform
- application software

The customer still has responsibilities such as:

- data
- users and identities
- access management
- appropriate configuration and use of the service

SaaS does **not** mean the customer has zero responsibility.

## Examples

A common Microsoft example is:

```text
Microsoft 365
→ SaaS
```

Cloud-hosted email and productivity applications are typical SaaS scenarios.

## Decision Factors

Choose SaaS when the customer wants to:

- use a complete application;
- avoid managing servers and operating systems;
- avoid building and maintaining the application platform;
- minimize infrastructure responsibility.

The most useful question is:

```text
BUILD the application?
→ PaaS

USE the application?
→ SaaS
```

## SaaS vs PaaS

| Requirement | PaaS | SaaS |
|---|:---:|:---:|
| Customer builds/deploys application | ✅ | ❌ |
| Customer uses finished application | ❌ | ✅ |
| Provider manages underlying OS | ✅ | ✅ |
| Provider manages application software | ❌ | ✅ |

## Common Mistakes

Do not assume SaaS means Microsoft is responsible for everything.

Customers still remain responsible for their data, identities, access, and appropriate service configuration.

## Exam Reasoning

```text
Need a finished application?
→ SaaS

Need a platform to build an application?
→ PaaS

Need control over the operating system?
→ IaaS
```

> **SaaS = use the software; the provider manages most of the stack.**
