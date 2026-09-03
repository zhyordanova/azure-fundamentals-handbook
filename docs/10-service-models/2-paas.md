# Platform as a Service (PaaS)

## Definition

Platform as a Service (PaaS) provides a managed platform for building, deploying, and running applications without requiring the customer to manage the underlying operating system or physical infrastructure.

## What Problem Does It Solve?

Use PaaS when developers want to focus on the application and data instead of maintaining servers and operating systems.

```text
Build / deploy application
+
Do not manage underlying OS
        ↓
PaaS
```

## Responsibilities

With PaaS, Microsoft manages more of the technology stack than with IaaS, including the underlying operating system and platform infrastructure.

The customer primarily focuses on:

- applications
- application configuration
- data
- identities and access

The key distinction is:

> **The customer builds or deploys the application, but does not manage the underlying operating system.**

## Azure Examples

Common AZ-900 examples include:

| Azure Service | Model |
|---|---|
| Azure App Service | **PaaS** |
| Azure SQL Database | **PaaS** |
| Azure Functions | **PaaS / serverless compute** |

## Decision Factors

Choose PaaS when the scenario requires:

- building or hosting an application;
- reduced infrastructure administration;
- no customer management of the underlying OS;
- a managed application or database platform.

```text
Building the application
+
Provider manages OS/platform
→ PaaS
```

## PaaS vs IaaS vs SaaS

| Question | Best Fit |
|---|---|
| Need OS control? | **IaaS** |
| Need a managed platform to build/deploy an app? | **PaaS** |
| Need to use a finished application? | **SaaS** |

The PaaS vs SaaS distinction is especially useful:

```text
BUILD / DEPLOY application
→ PaaS

USE finished application
→ SaaS
```

## Common Mistakes

PaaS does not mean that Microsoft manages the customer's application data or business logic for them.

Also, do not classify a service as IaaS merely because computing infrastructure exists underneath it. The question is **what the customer manages**.

## Exam Reasoning

```text
Need to build/deploy an application?
        ↓
Do you need OS control?

YES → IaaS
NO  → PaaS
```

> **PaaS = build applications without managing the underlying OS.**
