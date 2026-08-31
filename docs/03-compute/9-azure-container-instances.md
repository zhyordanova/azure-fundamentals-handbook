# Azure Container Instances (ACI)

## Definition

Azure Container Instances (ACI) is a fully managed Azure service that allows you to run containers without provisioning or managing virtual machines or Kubernetes clusters.

ACI is one of the simplest ways to deploy containerized applications in Azure.

## Why Azure Container Instances Exist

Not every containerized application requires a complex orchestration platform.

Many workloads only need to:

- Run a single container
- Execute a background task
- Process jobs on demand
- Run for a short period of time

For these scenarios, deploying Kubernetes would add unnecessary complexity.

Azure Container Instances provides a lightweight alternative.

## Characteristics

Azure Container Instances provides:

- Serverless container execution
- No virtual machine management
- Fast deployment
- Per-second billing
- Support for Linux and Windows containers

Microsoft manages the underlying infrastructure while customers focus only on the container.

## Typical Use Cases

Azure Container Instances is commonly used for:

- Batch processing
- Background jobs
- Build and test workloads
- Short-lived applications
- Simple containerized services

## Customer Responsibilities

When using Azure Container Instances, the customer is responsible for:

- Container image
- Application configuration
- Business logic
- Application data

Microsoft manages:

- Physical infrastructure
- Virtual machines
- Operating system
- Container host
- Networking infrastructure

## Decision Factors

Choose Azure Container Instances when:

- the workload is containerized
- Kubernetes orchestration is not required
- the organization wants to run containers without managing virtual machines
- a simpler managed container execution option is sufficient

Choose AKS when the requirement specifically involves Kubernetes orchestration and management of a more complex containerized application.

> **Simple managed container execution → ACI**

## Microsoft Trigger Words

If a question contains words such as:

- run containers
- no virtual machine management
- no Kubernetes
- simple container deployment
- single container

Think:

> Azure Container Instances (ACI)

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure service runs containers without managing virtual machines?
- Which Azure service is the simplest way to run containers?
- Which Azure service should be used when Kubernetes is not required?

## Common Mistakes

❌ Thinking Azure Container Instances replaces Kubernetes.

ACI is intended for simple container workloads.

AKS is intended for orchestrating large numbers of containers.

❌ Thinking Azure Container Instances manages complete applications.

ACI runs containers.

Application orchestration is handled by Azure Kubernetes Service (AKS).

## Compare With

| Azure Container Instances | Azure Kubernetes Service |
|----------------------------|--------------------------|
| Simple container execution | Container orchestration |
| No cluster management | Kubernetes cluster |
| Best for small workloads | Best for complex applications |
| Minimal management | Advanced management capabilities |

## Exam Reasoning

Microsoft usually distinguishes ACI from AKS using one phrase:

> **without managing virtual machines or Kubernetes**

When this wording appears, the correct answer is almost always:

> **Azure Container Instances (ACI)**

If the question mentions orchestrating many containers or Kubernetes, the correct answer is **Azure Kubernetes Service (AKS)**.