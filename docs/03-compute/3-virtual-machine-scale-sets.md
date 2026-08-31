# Virtual Machine Scale Sets

## Definition

Azure Virtual Machine Scale Sets (VMSS) is an Azure compute service that allows you to deploy and manage a group of virtual machines as a scalable set.

VM Scale Sets support automatic scaling, allowing the number of virtual machine instances to increase or decrease based on configured rules and application demand.

Depending on the orchestration mode, a scale set can contain identical or mixed virtual machine types.

## Why VM Scale Sets Exist

Managing many virtual machines individually is difficult.

For example, an application may require:

- 2 virtual machines during normal operation.
- 20 virtual machines during peak traffic.
- 5 virtual machines overnight.

VM Scale Sets automate this process, ensuring applications always have the required number of virtual machines.

## Characteristics

Virtual Machine Scale Sets provide:

- Management of multiple virtual machines
- Manual or automatic scaling
- Integration with Azure Load Balancer
- High availability capabilities
- Metrics-based autoscaling
- Simplified management of VM instances

## Typical Use Cases

VM Scale Sets are commonly used for:

- Web applications with changing traffic.
- Large enterprise applications.
- Compute-intensive workloads.
- Applications requiring automatic scaling.

## Autoscaling

VM Scale Sets can use Azure Monitor autoscale to automatically increase or decrease the number of VM instances.

Scaling rules can use:

- CPU utilization
- Disk or network metrics
- Guest metrics such as memory usage
- Custom metrics
- Schedule-based rules

Example:

- High sustained CPU utilization → Add VM instances.
- Low sustained utilization → Remove VM instances.

## Microsoft Trigger Words

If a question contains words such as:

- multiple virtual machines
- autoscale
- scale out
- scale in
- VM instances
- demand
- scalable VM workload

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

Ask:

> "Do I need one VM or a scalable group of VMs?"

If the requirement is:

- one independently managed Virtual Machine;

→ **Azure Virtual Machine**

If the requirement is:

- multiple VM instances;
- scale out or scale in;
- autoscaling based on demand;

→ **Virtual Machine Scale Sets**

Do not rely only on the phrase **identical VMs** because modern Flexible orchestration can also support mixed VM types.