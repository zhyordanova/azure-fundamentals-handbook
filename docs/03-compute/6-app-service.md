# Azure App Service

## Definition

Azure App Service is a fully managed Platform as a Service (PaaS) offering for hosting web applications, REST APIs, and web back ends.

Microsoft manages the underlying infrastructure, operating system, runtime, and security patching, allowing developers to focus on building and deploying applications.

## Why App Service Exists

Many organizations want to deploy web applications without managing servers or operating systems.

Instead of provisioning virtual machines, installing web servers, and maintaining operating systems, developers can deploy application code directly to Azure App Service.

This reduces operational overhead and accelerates application delivery.

## Characteristics

Azure App Service provides:

- Fully managed web hosting
- Automatic operating system updates
- Managed runtime environments
- Built-in scalability
- High availability
- Continuous deployment support

Because Microsoft manages the operating system and runtime, App Service is classified as **Platform as a Service (PaaS)**.

## Typical Use Cases

Azure App Service is commonly used for:

- Web applications
- REST APIs
- Internal business applications
- Customer-facing websites
- Mobile application back ends

## Customer Responsibilities

When using Azure App Service, the customer is responsible for:

- Application code
- Application configuration
- Data
- Authentication and authorization settings

Microsoft manages:

- Physical infrastructure
- Operating system
- Runtime
- Security patching
- Web server platform

## Microsoft Trigger Words

If a question contains words such as:

- Microsoft manages the operating system
- deploy application code
- web application
- PaaS
- runtime
- no server management
- managed web application

Think:

> Azure App Service

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure service hosts web applications without managing servers?
- Which Azure service allows developers to deploy only application code?
- Which Azure service belongs to Platform as a Service (PaaS)?
- Which Azure service manages the operating system and runtime?

## Common Mistakes

❌ Thinking Azure App Service is Infrastructure as a Service (IaaS).

App Service is Platform as a Service (PaaS).

❌ Thinking customers manage the operating system.

Microsoft manages:

- Operating system
- Runtime
- Infrastructure

Customers manage only the application and its data.

## Compare With

| Azure App Service | Azure Virtual Machines |
|-------------------|------------------------|
| PaaS | IaaS |
| Microsoft manages the OS | Customer manages the OS |
| Deploy application code | Install and manage software |
| Optimized for web apps | General-purpose compute |

## Exam Tip

Ask:

> "Does the customer need to manage the server or only the application?"

If the customer needs:

- operating system control;
- custom server configuration;
- administrative access;

→ **Azure Virtual Machines**

If the customer wants to:

- deploy a web application or API;
- avoid managing the operating system;
- use a managed application platform;

→ **Azure App Service**