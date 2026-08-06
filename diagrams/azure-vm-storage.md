```mermaid
flowchart LR

    VM["Virtual Machine"]
    VM --> OS["OS Disk"]
    VM --> DATA["Data Disk"]
    OS --> MD["Managed Disk"]

    DATA --> MD
```