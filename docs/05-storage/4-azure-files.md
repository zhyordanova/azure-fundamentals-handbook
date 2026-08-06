# Azure Files

> Azure Fundamentals Handbook

---

## Definition

Azure Files is a fully managed file sharing service that provides shared file storage in the cloud.

It allows multiple users and applications to access the same files simultaneously by using standard file sharing protocols.

Azure Files supports both:

- Server Message Block (SMB)
- Network File System (NFS)

---

## Why Azure Files Exists

Many applications require shared file storage that behaves like a traditional network file share.

Instead of managing on-premises file servers, Azure Files provides fully managed cloud-based file shares that can be accessed from:

- Azure Virtual Machines
- On-premises servers
- Windows
- Linux
- macOS

Applications can continue using familiar file sharing protocols without modification.

---

## Characteristics

Azure Files provides:

- Managed file shares
- SMB and NFS support
- Simultaneous access by multiple clients
- Integration with Azure Virtual Machines
- Cloud-based file storage
- Automatic redundancy options

---

## Supported Protocols

### Server Message Block (SMB)

SMB is the most commonly used protocol for Azure Files.

Typical scenarios:

- Windows file shares
- Shared drives
- Corporate file servers

---

### Network File System (NFS)

NFS is primarily used by Linux-based workloads.

Typical scenarios:

- Linux Virtual Machines
- High-performance computing
- Container workloads

---

## Typical Use Cases

Azure Files is commonly used for:

- Shared folders between Virtual Machines
- Lift-and-shift migrations of file servers
- User home directories
- Application configuration files
- Shared application data

---

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

---

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure storage service provides shared file storage?
- Which Azure storage service supports SMB?
- Which Azure storage service supports NFS?
- Which Azure storage service can be mounted as a network drive?

---

## Common Mistakes

❌ Thinking Azure Files stores images and videos for web applications.

Blob Storage is designed for object storage such as:

- Images
- Videos
- Documents
- Backups

Azure Files provides shared file systems.

---

❌ Thinking Azure Files is designed for Virtual Machine disks.

Azure Managed Disks provide storage for Azure Virtual Machines.

Azure Files provides shared file storage.

---

## Compare With

| Azure Files | Blob Storage |
|-------------|--------------|
| Shared file storage | Object storage |
| SMB / NFS | HTTP / HTTPS access |
| Mounted as a network drive | Accessed as blobs |
| Multiple clients access the same files | Stores unstructured data |

---

## Exam Tip

Microsoft almost always uses these phrases:

- SMB
- NFS
- shared file share
- mounted drive
- multiple Virtual Machines

These phrases almost always indicate:

> **Azure Files**

If the question mentions:

- images
- videos
- browser access
- backup

the correct answer is usually:

> **Azure Blob Storage**