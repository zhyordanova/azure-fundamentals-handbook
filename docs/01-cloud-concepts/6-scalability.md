# Scalability

## Definition

Scalability is the ability to increase or decrease computing capacity to meet workload requirements.

## Vertical vs Horizontal Scaling

| Type | What Changes | Scale | Example |
|---|---|---|---|
| **Vertical** | Capacity of one resource | **Up / Down** | Add or remove CPU / RAM |
| **Horizontal** | Number of resources | **Out / In** | Add or remove VM instances |

### Vertical Scaling

Vertical scaling changes the capacity of the **same resource**.

```text
More CPU / RAM
→ Scale UP

Less CPU / RAM
→ Scale DOWN
```

Think:

> **UP / DOWN = change the machine**

### Horizontal Scaling

Horizontal scaling changes the **number of resources or instances**.

```text
More VMs / instances
→ Scale OUT

Fewer VMs / instances
→ Scale IN
```

Think:

> **OUT / IN = change the number of machines**

## Decision Factors

Choose scalability when the requirement is about the **ability to change capacity** as workload requirements grow or shrink.

```text
Need more power in one resource?
→ Vertical scaling

Need more resources / instances?
→ Horizontal scaling
```

## Scalability vs Elasticity

```text
Capacity CAN be increased or decreased
→ Scalability

Capacity dynamically adapts as demand changes
→ Elasticity
```

Elasticity uses scalability to respond dynamically to changing demand.

## Exam Reasoning

First identify **what is changing**:

```text
CPU / RAM
→ Vertical
→ Scale Up / Down

Number of VMs / instances
→ Horizontal
→ Scale Out / In
```

Then ask whether the question describes:

```text
Ability to change capacity
→ Scalability

Dynamic response to changing demand
→ Elasticity
```