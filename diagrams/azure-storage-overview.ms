```mermaid
flowchart TD

    subgraph Azure Storage

        SA["Storage Account"]

        B["Blob Storage"]
        F["Azure Files"]
        Q["Queue Storage"]
        T["Table Storage"]

        MD["Managed Disks"]

        SA --> B
        SA --> F
        SA --> Q
        SA --> T

        B --> BT["Hot / Cool / Cold / Archive"]

    end

    VM["Virtual Machine"]

    VM -. uses .-> MD
```