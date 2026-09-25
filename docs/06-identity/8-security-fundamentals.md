# Azure Security Fundamentals

## Zero Trust
Zero Trust is a security model based on three core principles:

```text
VERIFY EXPLICITLY
+
USE LEAST PRIVILEGE ACCESS
+
ASSUME BREACH
→ Zero Trust
```

Zero Trust does not automatically trust a request because it originates from an internal network or trusted location.

## Defense in Depth
Defense in depth uses **multiple layers of security controls** so that a single failed control does not leave the entire environment unprotected.

A useful fundamentals model is:

```text
Physical security
      ↓
Identity and access
      ↓
Perimeter
      ↓
Network
      ↓
Compute
      ↓
Application
      ↓
Data
```

The exact implementation can vary; the key idea is **layered protection**.

## Microsoft Defender for Cloud
Microsoft Defender for Cloud helps improve the security posture of cloud resources and provides security recommendations and workload protection capabilities.

Think:

```text
Security posture / security recommendations
for cloud resources
→ Microsoft Defender for Cloud
```

## Decision Factors
```text
Verify every request + least privilege + assume breach
→ Zero Trust

Protect using multiple security layers
→ Defense in depth

Assess and improve cloud security posture
→ Microsoft Defender for Cloud
```

## Compare With
| Concept | Primary idea |
|---|---|
| Zero Trust | Never rely on implicit trust; verify explicitly |
| Defense in depth | Use multiple layers of security controls |
| Defender for Cloud | Security posture management and protection for cloud resources |

## Exam Reasoning
First identify whether the question asks for a **security philosophy**, a **layered protection model**, or an **Azure security service**.
