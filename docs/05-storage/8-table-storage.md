# Azure Table Storage

## Definition

Azure Table Storage is a NoSQL key/attribute store for structured, non-relational data.

It uses a flexible schema and stores data as entities.

## What Problem Does It Solve?

Some applications need scalable structured storage without relational database features such as joins and fixed relational schemas.

Table Storage provides a simple NoSQL option for these scenarios.

## Key Characteristics

- NoSQL storage
- key/attribute data
- flexible schema
- scalable structured data storage
- entities identified using partition and row keys

## Decision Factors

Ask:

> **Does the workload require relational database behavior?**

```text
Structured non-relational / key-value data
→ Table Storage

Relational tables / joins / SQL relationships
→ Relational database service
```

## Best-Fit Scenarios

- user profiles
- device metadata
- configuration data
- inventory metadata
- application metadata

## Compare With

| Table Storage | Relational Database |
|---|---|
| NoSQL | Relational |
| Flexible schema | Defined relational schema |
| Key/attribute entities | Tables and relationships |
| No joins | Supports relational queries |

## Common Mistakes

Table Storage is not a relational SQL database.

It also does not store files or media; Blob Storage is designed for unstructured object data.

## Microsoft Trigger Words

- NoSQL
- key-value
- key/attribute
- structured non-relational data
- flexible schema

## Exam Reasoning

> **Structured + non-relational + key/value → Table Storage**
