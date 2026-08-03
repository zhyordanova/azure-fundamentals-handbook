# Elasticity


## Definition

Elasticity is the ability of a cloud environment to automatically increase or decrease computing resources based on current demand.

Unlike scalability, elasticity continuously adapts resource capacity without requiring manual intervention.

## Why Elasticity Matters

Application workloads often change throughout the day.

For example:

- An online store receives thousands of visitors during a sales campaign.
- A business application is heavily used during working hours but has minimal activity overnight.
- A streaming platform experiences spikes during major live events.

Elasticity ensures that sufficient resources are available when demand increases while avoiding unnecessary costs when demand decreases.

## How Elasticity Works

Azure continuously monitors workload metrics such as CPU utilization, memory usage, or the number of incoming requests.

When predefined thresholds are reached, Azure automatically:

- Adds additional resources when demand increases.
- Removes unnecessary resources when demand decreases.

This process helps maintain application performance while optimizing costs.

## Azure Services That Support Elasticity

Examples include:

- Azure Virtual Machine Scale Sets
- Azure App Service
- Azure Functions
- Azure Kubernetes Service (AKS)

Each service can automatically scale according to configured rules.

## Microsoft Trigger Words

If a question contains words such as:

- automatically
- automatically scale
- demand
- workload
- add or remove resources automatically
- dynamic scaling

Think:

> Elasticity

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which cloud benefit automatically adjusts resources to meet demand?
- What allows an application to automatically scale during traffic spikes?
- Which characteristic optimizes both performance and cost?

## Common Mistakes

❌ Thinking Elasticity and Scalability are identical.

Scalability is the capability to increase or decrease resources.

Elasticity is the automatic adjustment of resources based on workload.

❌ Thinking elasticity always means adding more resources.

Elasticity also removes resources automatically when demand decreases.

## Compare With

| Elasticity | Scalability |
|------------|-------------|
| Automatic resource adjustment | Resource capacity can be increased or decreased |
| Responds continuously to workload | May require manual action |
| Optimizes both performance and cost | Focuses on supporting larger workloads |

## Exam Tip

Pay close attention to one word:

> **automatically**

If Microsoft explicitly mentions that resources are added or removed automatically, the correct concept is usually **Elasticity**.

If the question simply asks whether additional resources can be added, the correct concept is usually **Scalability**.