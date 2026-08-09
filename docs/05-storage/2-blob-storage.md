# Blob Storage

## Definition

Azure Blob Storage is Microsoft's object storage service for storing large amounts of unstructured data.

Unlike traditional file systems, Blob Storage stores data as individual objects (blobs) inside containers.

Typical examples of unstructured data include:

- Images
- Videos
- Audio files
- Documents
- Backup files
- Log files

## Why Blob Storage Exists

Many applications need to store large amounts of data that does not belong in a traditional database.

Blob Storage is designed for:

- Massive scalability
- High durability
- Low-cost storage
- Internet access
- Backup and archive scenarios

It is one of the most commonly used Azure Storage services.

## Characteristics

Blob Storage provides:

- Object storage
- High scalability
- High durability
- HTTP/HTTPS access
- Support for very large files
- Multiple access tiers (Hot, Cool, Cold, Archive)

Blob Storage is optimized for storing unstructured data rather than traditional file shares.

## Blob Types

Azure Blob Storage supports three blob types:

### Block Blob

Used for:

- Images
- Documents
- Videos
- Backups
- General-purpose files

This is the most commonly used blob type.

### Append Blob

Optimized for:

- Log files
- Audit data
- Data that is continuously appended

### Page Blob

Optimized for:

- Random read/write operations
- Virtual machine disks

Azure Managed Disks are built on Page Blob technology, although Managed Disks abstract this implementation detail from users.

## Typical Use Cases

Blob Storage is commonly used for:

- Image hosting
- Video streaming
- Backup and restore
- Document storage
- Static website content
- Application logs

## Microsoft Trigger Words

If a question contains words such as:

- images
- videos
- documents
- backup
- unstructured data
- browser access
- object storage

Think:

> Azure Blob Storage

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure storage service stores unstructured data?
- Which Azure service is used for images and videos?
- Which Azure storage service is commonly used for backup and restore?
- Which Azure storage service serves files directly to a browser?

## Common Mistakes

❌ Thinking Blob Storage provides shared network drives.

Blob Storage stores objects.

Shared file access is provided by Azure Files.

❌ Thinking Blob Storage is intended for Virtual Machine disks.

Virtual Machines use Azure Managed Disks.

Although Managed Disks use Page Blob technology internally, customers work with Managed Disks rather than Page Blobs directly.

## Compare With

| Blob Storage | Azure Files |
|---------------|-------------|
| Object storage | File shares |
| Stores unstructured data | Shared SMB/NFS storage |
| Browser access | Mounted as a drive |
| Images, videos, backups | Shared files between multiple machines |

## Exam Tip

Ask:

> "Does the application need object storage or a mounted file system?"

If the requirement involves:

- images;
- videos;
- backups;
- large amounts of unstructured object data;

→ **Blob Storage**

If multiple clients need a mounted SMB or NFS file share:

→ **Azure Files**