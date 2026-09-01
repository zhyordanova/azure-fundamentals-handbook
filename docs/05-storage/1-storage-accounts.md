# Storage Accounts

## Definition

An Azure Storage Account is the top-level Azure resource that provides access to Azure Storage services.

It provides a unique namespace and a management boundary for storage data.

A general-purpose storage account can provide services such as:

- Blob Storage
- Azure Files
- Queue Storage
- Table Storage

## What Problem Does It Solve?

Azure provides different storage services for different data types and access patterns.

A Storage Account provides a common Azure resource through which those storage services can be configured, secured, monitored, and billed.

## Key Characteristics

A Storage Account provides:

- a globally unique account name
- secure access to Azure Storage services
- encryption at rest by default
- scalability and durability
- redundancy configuration
- a common management boundary

## Storage Account Options

### Standard general-purpose v2

The standard general-purpose v2 account is the general-purpose choice for most Azure Storage scenarios.

It supports services such as Blob, Files, Queue, and Table Storage.

### Premium

Premium storage account options are designed for specialized workloads that require higher performance and lower latency.

For AZ-900, the important distinction is:

```text
General storage scenarios
→ Standard general-purpose v2

Specialized high-performance storage
→ Premium
```

## Decision Factors

First determine whether the question is asking for the **storage account** or a **specific storage service**.

```text
Resource that provides access to Azure Storage services
→ Storage Account

Unstructured objects
→ Blob Storage

Shared files
→ Azure Files

Messages
→ Queue Storage

Structured NoSQL key/value data
→ Table Storage
```

## What Can Change After Creation?

Not every storage account setting is fixed when the account is created.

For AZ-900, remember the following distinction:

| Setting | Can it change after creation? |
|---|---|
| Default access tier | ✅ Yes |
| Blob access tier | ✅ Yes |
| Redundancy | ✅ Often, but some changes have limitations |
| Tags | ✅ Yes |
| Storage account name | ❌ No |
| Region / location | ❌ No |

### Key Distinction

```text
CAN CHANGE
────────────
Access tier
Redundancy*
Tags

CANNOT CHANGE
────────────
Storage account name
Region / location
```

> `*` Redundancy changes can depend on the storage account type, region, and supported conversion path.

### Exam Reasoning

If the question asks whether a storage account can simply be renamed or moved to another Azure region:

```text
Rename existing storage account?
→ NO

Change existing storage account region?
→ NO
```

A different name or region generally requires creating another storage account and moving the data.

Do not confuse these settings with access tiers:

```text
Change access tier?
→ YES

Rename storage account?
→ NO

Change storage account region?
→ NO
```

## Compare With

| Storage Account | Storage Service |
|---|---|
| Top-level Azure resource | Stores a specific type of data |
| Provides namespace and configuration boundary | Solves a particular storage requirement |
| Can expose multiple storage services | Blob, Files, Queue, or Table |

## Common Mistakes

Do not treat Blob Storage, Azure Files, Queue Storage, and Table Storage as separate Azure accounts.

They are storage services accessed through a Storage Account.

Do not assume a Storage Account is only for files. Different services support different data models.

## Microsoft Trigger Words

- Storage Account
- Azure Storage
- Blob
- Files
- Queue
- Table
- namespace

## Exam Reasoning

Ask:

> **Is the question asking where Azure Storage services live, or which service fits the data?**

```text
Storage container / namespace / management boundary
→ Storage Account

Specific data requirement
→ Choose the appropriate storage service
```
