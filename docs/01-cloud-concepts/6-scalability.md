# Scalability

## Definition
Scalability is the ability to increase or decrease computing capacity to meet workload requirements.

## Vertical vs Horizontal Scaling
| Type | Meaning | Example |
|---|---|---|
| **Vertical** | Change the capacity of one resource | Larger VM size |
| **Horizontal** | Change the number of resources | Add more VM instances |

```text
Scale up / down
→ Vertical

Scale out / in
→ Horizontal
```

## Decision Factors
Choose scalability when the requirement is about the **ability to change capacity** as workload requirements grow or shrink.

## Scalability vs Elasticity
```text
Capacity CAN be increased or decreased
→ Scalability

Capacity dynamically adapts as demand changes
→ Elasticity
```

Elasticity uses scalability to respond dynamically to changing demand.

## Exam Reasoning
First ask whether the question describes a capacity capability or an automatic demand response.
