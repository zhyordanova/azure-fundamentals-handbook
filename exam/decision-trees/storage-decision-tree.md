# Storage Decision Tree

Storage questions usually test one of four decisions:

```text
WHAT DATA?
→ Storage service

WHAT FAILURE?
→ Redundancy

HOW OFTEN ACCESSED?
→ Blob access tier

HOW SHOULD IT MOVE?
→ Migration / file movement tool
```

## 1. Choose the Storage Service

```mermaid
flowchart TD
    A["What do you need to store?"]

    A -->|Unstructured objects| B["Blob Storage"]
    A -->|Shared SMB/NFS files| C["Azure Files"]
    A -->|VM persistent block storage| D["Managed Disks"]
    A -->|Asynchronous messages| E["Queue Storage"]
    A -->|Structured NoSQL key/value data| F["Table Storage"]
```

## 2. Choose Storage Redundancy

```mermaid
flowchart TD
    A["What failure must the data survive?"]

    A -->|Local infrastructure failure| LRS["LRS"]
    A -->|Availability Zone failure| ZRS["ZRS"]
    A -->|Regional failure| B{"Need zone resiliency in primary region too?"}

    B -->|No| GRS["GRS"]
    B -->|Yes| GZRS["GZRS"]
```

> If multiple options satisfy the requirement, prefer the least complex/costly option that still provides the required resiliency.

## 3. Choose a Blob Access Tier

```mermaid
flowchart TD
    A["How is the blob data accessed?"]

    A -->|Frequently| HOT["Hot"]
    A -->|Infrequently but online| COOL["Cool"]
    A -->|Rarely but immediately online| COLD["Cold"]
    A -->|Long-term; retrieval can wait| ARCH["Archive"]
```

Remember:

```text
Hot / Cool / Cold
→ online

Archive
→ offline; rehydration required
```

## 4. Choose a Movement or Migration Tool

```mermaid
flowchart TD
    A["What movement problem must be solved?"]

    A -->|Assess / plan / track migration| MIG["Azure Migrate"]
    A -->|Very large data + limited network| BOX["Azure Data Box"]
    A -->|Command-line file transfer| AZ["AzCopy"]
    A -->|Graphical storage management| SE["Storage Explorer"]
    A -->|Windows file server sync| FS["Azure File Sync"]
```

## High-Value Distinctions

| Scenario | Best Fit |
|---|---|
| Images, videos, backups | Blob Storage |
| Shared SMB/NFS files | Azure Files |
| VM OS/data disk | Managed Disks |
| Messages processed later | Queue Storage |
| Structured NoSQL key/value data | Table Storage |
| Zone failure protection | ZRS |
| Regional failure protection | GRS |
| Zone + regional protection | GZRS |
| Rare data that must remain online | Cold |
| Long-term offline retention | Archive |
| CLI file copy | AzCopy |
| GUI storage management | Storage Explorer |
| Windows file server synchronization | Azure File Sync |
| Migration assessment/planning | Azure Migrate |
| Very large physical transfer | Azure Data Box |
