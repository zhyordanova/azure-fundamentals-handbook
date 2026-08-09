# Azure Files

## Definition

Azure Files is a fully managed file sharing service that provides shared file storage in the cloud.

It allows multiple users and applications to access the same files simultaneously by using standard file sharing protocols.

Azure Files supports both:

- Server Message Block (SMB)
- Network File System (NFS)

## Why Azure Files Exists

Many applications require shared file storage that behaves like a traditional network file share.

Instead of managing on-premises file servers, Azure Files provides fully managed cloud-based file shares that can be accessed from:

- Azure Virtual Machines
- On-premises servers
- Windows
- Linux
- macOS

Applications can continue using familiar file sharing protocols without modification.

## Characteristics

Azure Files provides:

- Managed file shares
- SMB and NFS support
- Simultaneous access by multiple clients
- Integration with Azure Virtual Machines
- Cloud-based file storage
- Automatic redundancy options

## Supported Protocols

Azure Files supports two primary file-sharing protocols:

### Server Message Block (SMB)

Commonly used for:

- Windows file shares
- Team shares
- Home directories
- Windows-based applications

### Network File System (NFS)

Commonly used for:

- Linux and UNIX workloads
- POSIX-style file access
- Applications requiring NFS file shares

Protocol support and features depend on the selected Azure Files configuration.

## Typical Use Cases

Azure Files is commonly used for:

- Shared folders between Virtual Machines
- Lift-and-shift migrations of file servers
- User home directories
- Application configuration files
- Shared application data

## Microsoft Trigger Words

If a question contains words such as:

- SMB
- NFS
- shared file
- mounted drive
- network file share
- multiple virtual machines

Think:

> Azure Files

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure storage service provides shared file storage?
- Which Azure storage service supports SMB?
- Which Azure storage service supports NFS?
- Which Azure storage service can be mounted as a network drive?

## Common Mistakes

❌ Thinking Azure Files stores images and videos for web applications.

Blob Storage is designed for object storage such as:

- Images
- Videos
- Documents
- Backups

Azure Files provides shared file systems.

❌ Thinking Azure Files is designed for Virtual Machine disks.

Azure Managed Disks provide storage for Azure Virtual Machines.

Azure Files provides shared file storage.

## Compare With

| Azure Files | Blob Storage |
|-------------|--------------|
| Shared file storage | Object storage |
| SMB / NFS | HTTP / HTTPS access |
| Mounted as a network drive | Accessed as blobs |
| Multiple clients access the same files | Stores unstructured data |

## Exam Tip

Ask:

> "Does the workload need a shared file system that can be mounted by clients?"

If yes:

→ **Azure Files**

Strong clues include:

- SMB
- NFS
- file share
- mounted drive
- shared files

If the workload needs object storage for images, videos, or backups:

→ **Blob Storage**