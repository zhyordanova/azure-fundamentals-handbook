# Azure Kubernetes Service (AKS)

## Definition

Azure Kubernetes Service (AKS) is a managed Kubernetes service that simplifies the deployment, management, and orchestration of containerized applications.

AKS allows organizations to run and scale large numbers of containers without managing the Kubernetes control plane.

## Why Azure Kubernetes Service Exists

As applications grow, managing containers individually becomes difficult.

Modern applications often consist of many containers that must:

- communicate with each other;
- scale independently;
- recover automatically after failures;
- be updated with minimal downtime.

Kubernetes automates these tasks.

Azure Kubernetes Service provides a managed Kubernetes platform, allowing developers to focus on applications instead of infrastructure.

## Characteristics

Azure Kubernetes Service provides:

- Managed Kubernetes clusters
- Container orchestration
- Automatic scaling
- High availability
- Rolling updates
- Self-healing applications

## Shared Responsibilities

Microsoft manages the Kubernetes control plane and core managed components.

Customers remain responsible for areas such as:

- Container images
- Kubernetes workloads
- Application configuration
- Business logic
- Workload security and configuration

Responsibility for worker node management depends on the AKS mode and configuration.

## Typical Use Cases

Azure Kubernetes Service is commonly used for:

- Microservices architectures
- Enterprise applications
- Large web applications
- Cloud-native applications
- Applications requiring high scalability

## Customer Responsibilities

When using Azure Kubernetes Service, the customer is responsible for:

- Container images
- Kubernetes workloads
- Application configuration
- Business logic
- Worker node configuration

Microsoft manages:

- Kubernetes control plane
- Platform availability
- Control plane updates
- Core Kubernetes infrastructure

## Microsoft Trigger Words

If a question contains words such as:

- Kubernetes
- orchestrate containers
- container cluster
- microservices
- manage many containers
- Kubernetes service

Think:

> Azure Kubernetes Service (AKS)

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure service provides Kubernetes?
- Which Azure service orchestrates containers?
- Which Azure service manages container clusters?
- Which Azure service is designed for large containerized applications?

## Common Mistakes

❌ Thinking Azure Kubernetes Service simply runs containers.

AKS does much more.

It manages, orchestrates, scales, and monitors groups of containers.

❌ Thinking Azure Container Instances and AKS are interchangeable.

ACI runs individual or small groups of containers.

AKS manages large-scale containerized applications using Kubernetes.

## Compare With

| Azure Kubernetes Service | Azure Container Instances |
|---------------------------|---------------------------|
| Kubernetes orchestration | Simple container execution |
| Best for complex applications | Best for simple workloads |
| Cluster management | No cluster management |
| Enterprise-scale applications | Short-lived or lightweight workloads |

## Exam Tip

Ask:

> "Does the scenario require Kubernetes orchestration?"

If yes:

→ **Azure Kubernetes Service (AKS)**

If the requirement is simply to run containers without managing Kubernetes:

→ **Azure Container Instances (ACI)**

Remember:

**ACI = container execution**

**AKS = Kubernetes orchestration**