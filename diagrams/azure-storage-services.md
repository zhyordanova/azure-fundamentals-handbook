# Azure Storage Services

```mermaid
flowchart TD

    SA["Storage Account"]

    SA --> B["Blob Storage"]

    SA --> F["Azure Files"]

    SA --> Q["Queue Storage"]

    SA --> T["Table Storage"]

    B --> BT["Blob Access Tiers"]
```