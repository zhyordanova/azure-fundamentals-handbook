# Virtual Machine Scale Sets

## Definition

Azure Virtual Machine Scale Sets (VMSS) is an Azure compute service that allows you to deploy and manage a group of identical virtual machines.

VM Scale Sets automatically increase or decrease the number of virtual machines based on application demand.

## Why VM Scale Sets Exist

Managing many virtual machines individually is difficult.

For example, an application may require:

- 2 virtual machines during normal operation.
- 20 virtual machines during peak traffic.
- 5 virtual machines overnight.

VM Scale Sets automate this process, ensuring applications always have the required number of virtual machines.

## Characteristics

Virtual Machine Scale Sets provide:

- A group of identical virtual machines.
- Automatic scaling (autoscaling).
- Integration with Azure Load Balancer.
- High availability.
- Simplified management of multiple virtual machines.

## Typical Use Cases

VM Scale Sets are commonly used for:

- Web applications with changing traffic.
- Large enterprise applications.
- Compute-intensive workloads.
- Applications requiring automatic scaling.

## Autoscaling

VM Scale Sets can automatically scale based on Azure Monitor metrics.

Common scaling metrics include:

- CPU utilization
- Memory usage
- Number of requests
- Schedule-based rules

Example:

- CPU > 70% → Add more virtual machines.
- CPU < 30% → Remove unnecessary virtual machines.

## Microsoft Trigger Words

If a question contains words such as:

- identical virtual machines
- autoscale
- scale out
- scale in
- multiple VMs
- demand
- load balancer

Think:

> Virtual Machine Scale Sets

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure service manages identical virtual machines?
- Which compute service supports automatic scaling?
- Which Azure service should be used behind a Load Balancer?
- Which Azure compute service automatically increases or decreases the number of virtual machines?

## Common Mistakes

❌ Thinking Availability Sets and VM Scale Sets are the same.

Availability Sets improve availability.

VM Scale Sets provide automatic scaling of identical virtual machines.

❌ Thinking VM Scale Sets are Platform as a Service (PaaS).

VM Scale Sets are built on Azure Virtual Machines and therefore belong to Infrastructure as a Service (IaaS).

## Compare With

| Virtual Machine | Virtual Machine Scale Sets |
|-----------------|----------------------------|
| Single VM | Group of identical VMs |
| Manual scaling | Automatic scaling |
| Individual management | Centralized management |
| Suitable for small workloads | Suitable for scalable workloads |

## Exam Tip

Microsoft frequently uses phrases such as:

- identical virtual machines
- automatically scale
- demand changes
- load balancer

These phrases almost always indicate:

> **Azure Virtual Machine Scale Sets**

Be careful not to confuse **Availability Sets** with **Virtual Machine Scale Sets**.

Availability Sets improve availability.

Virtual Machine Scale Sets improve scalability.