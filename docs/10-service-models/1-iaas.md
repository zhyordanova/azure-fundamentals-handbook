# Infrastructure as a Service (IaaS)

## Definition

Infrastructure as a Service (IaaS) is a cloud service model in which the cloud provider manages the physical infrastructure while the customer manages the operating system, applications, and data.

IaaS provides the greatest level of control among the three main cloud service models.

## Why IaaS Exists

Some workloads require more control than managed cloud platforms provide.

Organizations may need to:

- Configure the operating system
- Install custom software
- Run legacy applications
- Control networking and security settings
- Migrate existing servers to the cloud

IaaS provides this flexibility without requiring organizations to purchase and maintain physical servers.

## Customer Responsibilities

With IaaS, the customer manages areas such as:

- Operating system
- Operating system updates and patches
- Applications
- Network controls
- Application configuration
- Data
- Identities and access

Microsoft manages the underlying cloud infrastructure, including:

- Physical datacenter
- Physical network
- Physical hosts
- Virtualization layer

## Azure Examples

Common Azure IaaS services include:

- Azure Virtual Machines
- Virtual Machine Scale Sets
- Azure Virtual Network
- Azure Managed Disks

The most important AZ-900 example is:

> **Azure Virtual Machines**

## Typical Use Cases

IaaS is commonly used for:

- Lift-and-shift migrations
- Legacy applications
- Custom server configurations
- Development and testing environments
- Workloads requiring operating system control

## Microsoft Trigger Words

If a question contains words such as:

- manage the operating system
- full administrative control
- install custom software
- Virtual Machine
- infrastructure
- legacy application

Think:

> Infrastructure as a Service (IaaS)

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which cloud service model provides the most control?
- In which service model does the customer manage the operating system?
- Which cloud service model includes Azure Virtual Machines?
- Which service model is suitable for lift-and-shift migration?

## Common Mistakes

❌ Thinking Microsoft manages the operating system in IaaS.

Microsoft manages the physical infrastructure and virtualization layer.

The customer manages the operating system.

❌ Thinking IaaS provides the least customer responsibility.

Among IaaS, PaaS, and SaaS, IaaS gives the customer the most management responsibility.

## Compare With

| IaaS | PaaS |
|------|------|
| Customer manages the OS | Microsoft manages the OS |
| Greater control | Less infrastructure management |
| Install custom software | Deploy application code |
| Azure Virtual Machines | Azure App Service |

## Exam Tip

Ask:

> "Does the customer need control of the operating system?"

If yes:

→ **IaaS**

If Microsoft manages the operating system and the customer focuses on deploying an application:

→ **PaaS**

For AZ-900:

> **Azure Virtual Machines = IaaS**