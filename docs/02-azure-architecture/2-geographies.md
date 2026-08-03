# Geographies

## Definition

An Azure Geography is a discrete market that contains one or more Azure regions.

Geographies are designed to address data residency, compliance, resilience, and regulatory requirements.

For example:

- Europe
- United States
- Asia Pacific

Each geography contains multiple Azure regions that are connected through Microsoft's global network.

## Why Geographies Exist

Microsoft operates Azure in many countries around the world.

Instead of managing every region independently, Azure groups related regions into larger geographic boundaries called **Geographies**.

This organization helps Microsoft:

- meet local compliance requirements;
- support data residency regulations;
- improve disaster recovery planning;
- organize Azure's global infrastructure.

## Relationship with Azure Regions

A geography contains one or more Azure regions.

For example:

```text
Europe Geography

├── North Europe

├── West Europe

└── Sweden Central
```

Regions inside the same geography can work together to provide resiliency and disaster recovery.

## Region Pairs

One important characteristic of Azure Geographies is that **Region Pairs always belong to the same Geography**.

For example:

```text
Europe Geography

West Europe

↓

North Europe
```

This is one of the most common questions in the AZ-900 exam.

## Microsoft Trigger Words

If a question contains words such as:

- geography
- compliance boundary
- data residency
- same geography
- political boundary

Think:

> Azure Geography

## Common Exam Questions

Microsoft frequently asks questions such as:

- What is an Azure Geography?
- A Region Pair belongs to the same ______.
- Which Azure component groups multiple regions?

## Common Mistakes

❌ Thinking Geography and Region are the same.

A Geography contains multiple Regions.

❌ Thinking Region Pairs can exist across different Geographies.

Azure Region Pairs always belong to the same Geography.

## Compare With

| Geography | Region |
|------------|--------|
| Groups multiple Azure Regions | Physical deployment location |
| Large geographic boundary | One or more datacenters |
| Supports compliance and residency | Hosts Azure resources |

## Exam Tip

The AZ-900 exam rarely asks for the definition of Geography.

Instead, Microsoft usually asks questions such as:

> "In a Region Pair, both regions belong to the same ______."

The correct answer is:

> **Geography**

Remember:

**Geography → Region → Availability Zone**