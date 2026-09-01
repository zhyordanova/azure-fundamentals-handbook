# Azure Files

## Definition

Azure Files provides fully managed shared file storage in Azure.

File shares can be accessed using standard file-sharing protocols such as:

- SMB
- NFS

## What Problem Does It Solve?

Some applications require a traditional shared file system that can be mounted by multiple clients.

Azure Files provides this capability without requiring customers to manage the underlying file-server infrastructure.

## Key Characteristics

- managed file shares
- SMB and NFS support
- simultaneous access by multiple clients
- access from Azure and supported on-premises scenarios
- familiar mounted-file-share behavior

## Decision Factors

Ask:

> **Does the workload need a shared file system that clients can mount?**

```text
Shared / mounted SMB or NFS files
→ Azure Files

Unstructured object storage
→ Blob Storage

VM OS/data disk
→ Managed Disks
```

## Best-Fit Scenarios

- shared folders between VMs
- file-server workloads
- user or team shares
- applications requiring SMB/NFS
- shared application data

## Compare With

| Azure Files | Blob Storage |
|---|---|
| Shared file system | Object storage |
| SMB/NFS | HTTP/HTTPS and APIs |
| Mounted by clients | Accessed as blobs |
| Multiple clients can share files | Stores unstructured objects |

## Common Mistakes

Azure Files is not the normal choice for VM operating-system disks. Use Managed Disks.

Blob Storage is a better fit for object data such as images, videos, and backups that do not require a mounted file share.

## Microsoft Trigger Words

- SMB
- NFS
- shared file
- mounted drive
- network file share

## Exam Reasoning

> **Shared file system → Azure Files**

The key distinction is **file-share semantics**, not simply that the workload stores files.
