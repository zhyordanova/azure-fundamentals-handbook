# Azure Virtual Desktop

## Definition

Azure Virtual Desktop is a desktop and application virtualization service that runs in Azure.

It enables users to access Windows desktops and applications remotely from supported devices.

## What Problem Does It Solve?

Organizations may need to provide users with centrally managed Windows desktops and applications without requiring the workloads and business data to run directly on each user's local device.

Azure Virtual Desktop provides these desktop experiences from Azure.

## Key Characteristics

Azure Virtual Desktop provides:

- cloud-hosted Windows desktop experiences
- remote access to applications
- centralized desktop and application management
- support for access from different devices
- single-session and multi-session scenarios

## Decision Factors

Ask:

> **Who needs the compute resource?**

```text
Application/server workload
→ Virtual Machine

User needs cloud-hosted Windows desktop
→ Azure Virtual Desktop
```

## Best-Fit Scenarios

Azure Virtual Desktop is appropriate when an organization needs:

- remote Windows desktops
- centrally hosted desktop applications
- access to desktops from different locations or devices

## Compare With

| Azure Virtual Machine | Azure Virtual Desktop |
|---|---|
| General-purpose compute | Desktop/application virtualization |
| Runs server or application workloads | Provides desktop experience to users |
| Administrator manages VM workload | Users remotely access desktop/apps |

## Common Mistakes

Do not choose Azure Virtual Desktop simply because a scenario contains the word **virtual**.

Ask what is being delivered:

```text
Virtual server
→ Azure VM

Virtual Windows desktop for user
→ Azure Virtual Desktop
```

## Exam Reasoning

If the scenario describes:

```text
Users
+
remote Windows desktop
+
applications hosted in Azure
```

think:

> **Azure Virtual Desktop**