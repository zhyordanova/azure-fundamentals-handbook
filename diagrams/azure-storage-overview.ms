```mermaid
flowchart TD

    SA["Storage Account"]
    SA --> B["Blob Storage"]
    SA --> F["Azure Files"]
    SA --> Q["Queue Storage"]
    SA --> T["Table Storage"]
    VM["Virtual Machine"]
    VM --> D["Managed Disks"]

    B --> BT["Hot / Cool / Cold / Archive"]
```