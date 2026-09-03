# Infrastructure as a Service (IaaS)

## Definition

Infrastructure as a Service (IaaS) provides virtualized computing infrastructure in the cloud.

Microsoft manages the physical infrastructure, while the customer keeps significant control over the virtual machine environment, including the operating system.

---

## What Problem Does It Solve?

Use IaaS when you need cloud infrastructure but still require control over the operating system and installed software.

```text
Need virtual server
+
Need OS control / custom configuration
        ↓
IaaS
```

A common Azure example is **Azure Virtual Machines**.

---

## Responsibilities

With IaaS:

**Microsoft manages:**

- physical datacenter
- physical servers
- physical networking

**Customer manages:**

- operating system
- installed applications and software
- data
- identities and access

The key AZ-900 distinction is:

> **IaaS gives the customer more control, but also more management responsibility than PaaS or SaaS.**

---

## Decision Factors

Choose IaaS when the scenario requires:

- control over the operating system;
- custom server configuration;
- installation of software that requires OS-level access;
- a virtual server similar to an on-premises server.

```text
Need to manage the OS?
→ IaaS
```

---

## IaaS vs PaaS

| Requirement | IaaS | PaaS |
|---|:---:|:---:|
| Customer manages OS | ✅ | ❌ |
| OS-level customization | ✅ | ❌ |
| Provider manages physical infrastructure | ✅ | ✅ |
| Focus mainly on application code | ❌ | ✅ |

Example:

```text
Web application + custom OS configuration
→ Azure VM / IaaS

Web application + minimize OS administration
→ App Service / PaaS
```

---

## Common Mistakes

Do not choose IaaS simply because the workload runs in Azure.

Ask whether the customer needs to manage the operating system.

```text
Azure Virtual Machine
→ IaaS

Azure App Service
→ NOT IaaS
```

---

## Exam Reasoning

For IaaS questions, ask:

```text
1. Does the customer need a virtual server?
2. Does the customer need OS control?

YES
→ IaaS
```

> **IaaS = cloud infrastructure with customer control of the operating system.**
