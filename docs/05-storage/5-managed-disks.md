# Azure Managed Disks

## Definition

Azure Managed Disks are block-level storage volumes that are designed specifically for Azure Virtual Machines.

Managed Disks simplify the creation, management, availability, and scalability of virtual machine storage by allowing Microsoft Azure to manage the underlying storage infrastructure.

Each Azure Virtual Machine uses one or more Managed Disks for its operating system and application data.

## Why Managed Disks Exist

Every Virtual Machine requires persistent storage.

Traditionally, administrators had to create and manage storage accounts manually for virtual machine disks.

Azure Managed Disks remove this complexity by automatically handling:

- Storage provisioning
- Performance management
- Availability
- Scalability

This allows administrators to focus on the virtual machine instead of the storage infrastructure.

## Characteristics

Azure Managed Disks provide:

- Persistent block storage
- High durability
- High availability
- Automatic management
- Performance tiers
- Integration with Azure Virtual Machines

Managed Disks are tightly integrated with Azure compute services.

## Disk Types

Azure provides several Managed Disk types.

### Standard HDD

- Lowest cost
- Suitable for infrequently accessed workloads
- Development and testing

### Standard SSD

- Better performance than HDD
- General-purpose workloads

### Premium SSD

- High performance
- Low latency
- Production workloads
- Business-critical applications

### Premium SSD v2

- High performance
- Low latency
- Flexible performance configuration
- Production and performance-sensitive workloads

### Ultra Disk

- Highest-performance managed disk option
- Very low latency
- Designed for I/O-intensive workloads
- Used as a data disk rather than an OS disk

## Typical Use Cases

Managed Disks are commonly used for:

- Virtual Machine operating systems
- Application data
- Databases
- Enterprise workloads

## Microsoft Trigger Words

If a question contains words such as:

- Virtual Machine disk
- OS disk
- Data disk
- persistent storage
- block storage

Think:

> Azure Managed Disks

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure storage service provides disks for Virtual Machines?
- Which Azure storage service stores the operating system of a Virtual Machine?
- Which Azure storage service provides persistent storage for Azure Virtual Machines?

## Common Mistakes

❌ Thinking Blob Storage is the storage service used directly by Virtual Machines.

Azure Virtual Machines use Azure Managed Disks.

❌ Thinking Azure Files stores operating system disks.

Azure Files provides shared file storage.

Managed Disks provide storage for Virtual Machines.

## Compare With

| Azure Managed Disks | Azure Blob Storage |
|----------------------|--------------------|
| Block storage | Object storage |
| Virtual Machine disks | Images, videos, backups |
| Persistent VM storage | Unstructured data |
| Attached to Virtual Machines | Accessed through storage APIs |

## Exam Tip

First identify **what the storage is attached to**.

If the requirement is persistent block storage for an Azure Virtual Machine:

→ **Azure Managed Disks**

If the requirement is:

- object storage → Blob Storage
- shared file storage → Azure Files

For AZ-900, recognizing **VM disk = Managed Disk** is more important than memorizing detailed disk performance specifications.