# Platform as a Service (PaaS)

## Definition

Platform as a Service (PaaS) is a cloud service model in which the cloud provider manages the infrastructure, operating system, and platform while the customer focuses on applications and data.

PaaS reduces infrastructure management compared with IaaS.

## Why PaaS Exists

Developers often want to build and deploy applications without managing:

- Physical servers
- Virtual Machines
- Operating systems
- Operating system updates
- Platform maintenance

PaaS provides a managed application platform so developers can focus primarily on application development.

## Shared Responsibilities

With PaaS, Microsoft manages:

- Physical infrastructure
- Virtualization
- Operating system
- Operating system patching
- Platform services and runtime

The customer remains responsible for:

- Customer data
- Identities and users
- Configuration and settings
- Access management

Some responsibilities, including application and network controls, are shared depending on the service.

## Azure Examples

Common Azure PaaS examples include:

- Azure App Service
- Azure SQL Database

For AZ-900, a particularly important example is:

> **Azure App Service**

## Typical Use Cases

PaaS is commonly used for:

- Web applications
- APIs
- Application development
- Managed databases
- Rapid application deployment

## Microsoft Trigger Words

If a question contains words such as:

- Microsoft manages the operating system
- deploy application code
- managed platform
- web application
- no operating system management
- PaaS

Think:

> Platform as a Service (PaaS)

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which service model allows developers to focus on application code?
- Which service model does not require customers to manage the operating system?
- Which service model includes Azure App Service?
- Which service model provides a managed application platform?

## Common Mistakes

❌ Thinking PaaS means the customer has no responsibilities.

The customer still manages application code, configuration, and data.

❌ Thinking Azure Virtual Machines are PaaS.

Azure Virtual Machines are IaaS because the customer manages the operating system.

## Compare With

| PaaS | IaaS |
|------|------|
| Microsoft manages the OS | Customer manages the OS |
| Focus on applications | Focus on infrastructure and applications |
| Less administrative control | Greater administrative control |
| Azure App Service | Azure Virtual Machines |

## Exam Tip

Ask:

> "Does the customer need to manage the operating system?"

If yes:

→ **IaaS**

If Microsoft manages the operating system and platform while the customer focuses on the application:

→ **PaaS**

For AZ-900:

> **Azure App Service = PaaS**