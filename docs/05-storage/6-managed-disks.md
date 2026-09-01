# Azure Managed Disks

## Definition

Azure Managed Disks are persistent block-level storage volumes designed for Azure Virtual Machines.

Azure manages the underlying storage infrastructure so customers work with disks rather than manually managing storage accounts for VM disk placement.

## What Problem Does It Solve?

Virtual Machines require persistent storage for operating systems and application data.

Managed Disks provide that storage while simplifying provisioning, availability, and management.

## Key Characteristics

- persistent block storage
- designed for Azure VMs
- OS disks and data disks
- Azure-managed underlying storage
- multiple performance options

## Disk Types

Azure offers disk types such as Standard HDD, Standard SSD, Premium SSD, Premium SSD v2, and Ultra Disk.

For AZ-900, recognizing **VM disk = Managed Disk** is more important than memorizing detailed disk performance specifications.

## Decision Factors

Ask what the storage is attached to.

```text
Persistent VM OS/application storage
→ Managed Disk

Shared SMB/NFS storage
→ Azure Files

Unstructured object data
→ Blob Storage
```

## Best-Fit Scenarios

- VM operating-system disks
- VM data disks
- persistent block storage for Azure VMs

## Compare With

| Managed Disks | Blob Storage | Azure Files |
|---|---|---|
| Block storage | Object storage | Shared file storage |
| Attached to VMs | Images/videos/backups | SMB/NFS shares |
| OS and data disks | Unstructured objects | Multiple clients |

## Common Mistakes

Do not choose Azure Files for a VM OS disk.

Do not choose Blob Storage simply because VM disks ultimately use Azure storage technology. The customer-facing Azure service for VM disk scenarios is **Managed Disks**.

## Microsoft Trigger Words

- VM disk
- OS disk
- data disk
- persistent block storage

## Exam Reasoning

> **VM + persistent block storage → Managed Disks**
