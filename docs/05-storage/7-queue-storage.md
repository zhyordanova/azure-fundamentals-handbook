# Azure Queue Storage

## Definition

Azure Queue Storage stores messages that application components can process asynchronously.

A producer places a message in a queue and a consumer processes it later.

## What Problem Does It Solve?

Applications do not always need to process work immediately or communicate directly.

Queues help decouple components and support asynchronous background processing.

## Key Characteristics

- asynchronous messaging
- message persistence
- decoupled application components
- scalable backlog of work

## How It Works

```mermaid
flowchart LR
    A["Producer"] --> Q["Azure Queue Storage"] --> B["Consumer"]
```

## Decision Factors

Ask:

> **Is the requirement to store work/messages for later processing, or to execute code?**

```text
Store message / work item
→ Queue Storage

Execute code when an event occurs
→ Azure Functions
```

## Best-Fit Scenarios

- background jobs
- order processing
- image-processing requests
- email-processing requests
- communication between decoupled components

## Compare With

| Queue Storage | Blob Storage |
|---|---|
| Stores messages | Stores objects |
| Asynchronous work | Files/media/backups |
| Decouples components | Persistent object data |

## Common Mistakes

Queue Storage does not execute code.

Azure Functions can execute code in response to events; Queue Storage stores messages that may trigger processing.

## Microsoft Trigger Words

- queue
- message
- asynchronous
- background processing
- decouple
- process later

## Exam Reasoning

> **Queue stores the work. Function processes the work.**
