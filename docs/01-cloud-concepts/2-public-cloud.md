# Public Cloud

## Definition
A public cloud is a cloud environment operated by a cloud provider and delivered to customers over provider-managed infrastructure.

## What Problem Does It Solve?
It provides cloud resources without requiring an organization to own and operate the underlying physical datacenter infrastructure.

## Key Characteristics
- provider-owned physical infrastructure
- shared provider platform with logical isolation between customers
- rapid provisioning
- consumption-based services

## Decision Factors
```text
Use provider-operated cloud infrastructure
without dedicating the entire cloud environment to one organization
→ Public Cloud
```

## Compare With
| Requirement | Model |
|---|---|
| Provider-operated cloud services | **Public Cloud** |
| Cloud environment dedicated to one organization | **Private Cloud** |
| Private/on-premises + public cloud together | **Hybrid Cloud** |

## Exam Reasoning
Choose by **deployment model**, not by a generic word such as secure or scalable.
