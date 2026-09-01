# Blob Storage

## Definition

Azure Blob Storage is object storage for large amounts of unstructured data.

Typical examples include:

- images
- videos
- audio
- documents
- backups
- log files

## What Problem Does It Solve?

Applications often need scalable storage for objects that do not require a traditional mounted file system or relational database.

Blob Storage provides durable, scalable object storage accessible through Azure Storage APIs and HTTP/HTTPS.

## Key Characteristics

Blob Storage provides:

- object storage
- high scalability and durability
- HTTP/HTTPS access
- support for large unstructured datasets
- Hot, Cool, Cold, and Archive access tiers

## Blob Types

### Block Blob

Common for documents, images, videos, backups, and general-purpose object data.

### Append Blob

Optimized for data that is appended, such as logs.

### Page Blob

Supports random read/write operations. Azure Managed Disks abstract VM disk storage from customers, so AZ-900 VM disk questions should normally map to **Managed Disks**.

## Decision Factors

Ask:

> **Does the workload need object storage or a mounted shared file system?**

```text
Images / videos / backups / unstructured objects
→ Blob Storage

Shared SMB/NFS file system
→ Azure Files

Persistent VM block storage
→ Managed Disks
```

## Best-Fit Scenarios

- media and document storage
- backup and restore
- application logs
- static content
- large unstructured datasets

## Compare With

| Blob Storage | Azure Files | Managed Disks |
|---|---|---|
| Object storage | Shared file storage | VM block storage |
| HTTP/HTTPS and APIs | SMB/NFS | Attached to VMs |
| Images, videos, backups | Shared/mounted files | OS and data disks |

## Common Mistakes

Blob Storage is not a shared network drive. Use Azure Files for SMB/NFS file shares.

For Azure VM disks, choose Managed Disks rather than Blob Storage in normal AZ-900 scenarios.

## Microsoft Trigger Words

- object storage
- unstructured data
- images
- videos
- backups
- documents

## Exam Reasoning

Identify the **data model and access pattern** first.

> **Unstructured object data → Blob Storage**
