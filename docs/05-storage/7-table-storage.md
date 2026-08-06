# Azure Table Storage

## Definition

Azure Table Storage is a NoSQL key-value storage service designed for storing large amounts of structured, non-relational data.

Unlike traditional relational databases, Table Storage stores data as entities without requiring a fixed schema.

This allows applications to store large volumes of flexible data efficiently.

## Why Azure Table Storage Exists

Many applications need to store structured data without the complexity of a relational database.

Examples include:

- User profiles
- Device information
- Application configuration
- Inventory records
- Telemetry data

Azure Table Storage provides a simple, scalable, and cost-effective solution for these scenarios.

## Characteristics

Azure Table Storage provides:

- NoSQL key-value storage
- Schema-less design
- High scalability
- High availability
- Fast access to large datasets
- Cost-effective storage

Each record is stored as an entity identified by:

- Partition Key
- Row Key

Together, these keys uniquely identify each entity.

## Typical Use Cases

Azure Table Storage is commonly used for:

- User profile data
- Device metadata
- Configuration settings
- Inventory information
- Application metadata

## How Table Storage Differs from SQL Databases

Unlike relational databases:

- There are no relationships between tables.
- There are no joins.
- The schema is flexible.
- Data is optimized for scalability rather than complex queries.

## Microsoft Trigger Words

If a question contains words such as:

- NoSQL
- key-value
- structured data
- Partition Key
- Row Key
- schema-less

Think:

> Azure Table Storage

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure storage service provides NoSQL storage?
- Which Azure storage service stores key-value data?
- Which Azure storage service stores structured non-relational data?

## Common Mistakes

❌ Thinking Azure Table Storage is a relational database.

Azure Table Storage is a NoSQL service.

❌ Thinking Azure Table Storage stores files.

Blob Storage stores files and media.

Table Storage stores structured entities.

---

## Compare With

| Azure Table Storage | Azure SQL Database |
|----------------------|--------------------|
| NoSQL | Relational SQL database |
| Key-value storage | Tables with relationships |
| Flexible schema | Fixed schema |
| Optimized for scalability | Optimized for relational queries |

## Exam Tip

Azure Table Storage is not one of the most frequently tested services in AZ-900.

However, when Microsoft includes it, the questions almost always contain one of these phrases:

- NoSQL
- key-value
- structured non-relational data

These phrases usually indicate:

> **Azure Table Storage**