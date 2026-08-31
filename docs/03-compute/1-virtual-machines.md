# Virtual Machines

## Definition

An Azure Virtual Machine (VM) is a software emulation of a physical computer.

It provides virtualized compute resources, including:

- Virtual processor (vCPU)
- Memory (RAM)
- Storage
- Networking

Each virtual machine runs its own operating system, allowing organizations to install and manage applications just as they would on a physical server.

## Why Virtual Machines Exist

Not every application can run on a managed cloud service.

Some workloads require:

- Full administrative control
- Custom operating system configuration
- Installation of third-party software
- Legacy applications
- Specific runtime environments

Azure Virtual Machines provide this flexibility while eliminating the need to purchase physical hardware.

## Characteristics

Virtual Machines provide:

- Full operating system control
- Administrative access
- Support for Windows and Linux
- Flexible sizing
- Ability to install any supported software

Because customers manage the operating system, Virtual Machines are classified as **Infrastructure as a Service (IaaS)**.

## Common Use Cases

Azure Virtual Machines are commonly used for:

- Migrating existing on-premises servers
- Hosting custom business applications
- Running development and testing environments
- Running applications that require full operating system control

## Customer Responsibilities

When using Azure Virtual Machines, the customer is responsible for:

- Operating system updates
- Security patches
- Installed applications
- Runtime
- Application data

Microsoft manages:

- Physical servers
- Storage infrastructure
- Networking infrastructure
- Hypervisor

## Decision Factors

Choose Azure Virtual Machines when the scenario requires:

- control over the operating system
- custom software or server configuration
- support for legacy or specialized workloads
- greater infrastructure control

Consider a managed platform such as Azure App Service when reducing operating-system administration is more important than server-level control.

> **Maximum OS control → Virtual Machine**

## Microsoft Trigger Words

If a question contains words such as:

- virtual processor
- memory
- operating system
- full control
- install software
- manage the OS
- software emulation of a physical computer

Think:

> Azure Virtual Machine

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure service provides a software emulation of a physical computer?
- Which service gives the customer full control over the operating system?
- Which Azure compute service belongs to IaaS?
- Which Azure service should be used for legacy applications?

## Common Mistakes

❌ Thinking Virtual Machines are Platform as a Service (PaaS).

Virtual Machines are **Infrastructure as a Service (IaaS)** because the customer manages the operating system.

❌ Thinking Microsoft installs and updates the operating system.

With Azure Virtual Machines, operating system management remains the customer's responsibility.

## Compare With

| Virtual Machines | Azure App Service |
|------------------|-------------------|
| IaaS | PaaS |
| Customer manages the OS | Microsoft manages the OS |
| Full administrative control | Focus on application deployment |
| Supports any supported software | Optimized for web applications and APIs |

## Exam Reasoning

Ask:

> "Does the customer need control of the operating system?"

If the requirement includes:

- installing custom software;
- configuring the operating system;
- administrative access;
- running a legacy workload;

think:

> **Azure Virtual Machines**

If Microsoft manages the operating system and the customer primarily deploys application code, think about a **PaaS service such as Azure App Service**.