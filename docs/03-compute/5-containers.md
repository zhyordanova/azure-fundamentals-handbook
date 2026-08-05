# Containers

## Definition

A container is a lightweight, portable package that includes an application together with everything it needs to run.

This includes:

- Application code
- Runtime
- Libraries
- Dependencies
- Configuration

Containers allow applications to run consistently across different environments.

## Why Containers Exist

Traditional applications often behave differently between development, testing, and production environments.

Containers solve this problem by packaging both the application and all of its dependencies into a single unit.

This ensures that the application runs the same way regardless of where it is deployed.

## Characteristics

Containers provide:

- Lightweight virtualization
- Fast startup time
- Portability
- Consistent application environments
- Efficient resource utilization

Unlike virtual machines, containers share the operating system kernel instead of running a complete operating system.

## Containers vs Virtual Machines

A Virtual Machine virtualizes the entire computer.

A container virtualizes only the application.

Because containers share the host operating system, they start much faster and consume fewer resources.

## Typical Use Cases

Containers are commonly used for:

- Microservices
- Web applications
- APIs
- Continuous Integration / Continuous Deployment (CI/CD)
- Cloud-native applications

## Microsoft Trigger Words

If a question contains words such as:

- container
- lightweight
- portable
- package application
- dependencies
- Docker

Think:

> Containers

## Common Exam Questions

Microsoft frequently asks questions such as:

- What is a container?
- How are containers different from virtual machines?
- Why are containers considered lightweight?
- Which Azure services can run containers?

## Common Mistakes

❌ Thinking containers include a complete operating system.

Containers share the operating system kernel of the host.

❌ Thinking containers replace virtual machines.

Containers and virtual machines solve different problems and are often used together.

## Compare With

| Containers | Virtual Machines |
|------------|------------------|
| Share the host operating system | Each VM has its own operating system |
| Lightweight | Higher resource usage |
| Fast startup | Slower startup |
| Package applications | Emulate a complete computer |

## Exam Tip

Microsoft rarely asks detailed questions about container technology.

Instead, the exam usually asks which Azure service should be used to run containers.

This concept prepares you for the next two Azure services:

- Azure Container Instances (ACI)
- Azure Kubernetes Service (AKS)