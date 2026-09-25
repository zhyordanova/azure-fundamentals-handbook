# Identity Decision Tree

```mermaid
flowchart TD
    A["What is the identity or security requirement?"]

    A --> B["Manage cloud users and identities"]
    A --> C["Need managed traditional domain services"]
    A --> D["Control permissions to Azure resources"]
    A --> E["Strengthen authentication"]
    A --> F["Reduce repeated sign-ins"]
    A --> G["Apply access rules based on signals"]
    A --> H["Use common identity on-premises and cloud"]
    A --> I["Collaborate with external users"]
    A --> J["Security model / posture"]

    B --> ENTRA["Microsoft Entra ID"]
    C --> DS["Microsoft Entra Domain Services"]
    D --> RBAC["Azure RBAC"]
    E --> E1{"What requirement?"}
    E1 -->|"Multiple factors"| MFA["MFA"]
    E1 -->|"No traditional password"| PASS["Passwordless"]
    F --> SSO["Single Sign-On"]
    G --> CA["Conditional Access"]
    H --> HYBRID["Hybrid Identity"]
    I --> EXT["External Identities / B2B"]
    J --> J1{"What concept?"}
    J1 -->|"Verify explicitly / least privilege / assume breach"| ZERO["Zero Trust"]
    J1 -->|"Multiple security layers"| DID["Defense in Depth"]
    J1 -->|"Cloud security posture / recommendations"| DEF["Defender for Cloud"]
```

## High-Value Distinctions

```text
CLOUD IDENTITY
→ Microsoft Entra ID

MANAGED LDAP / KERBEROS / DOMAIN JOIN
→ Microsoft Entra Domain Services

WHAT CAN YOU DO TO AZURE RESOURCES?
→ Azure RBAC

MORE AUTHENTICATION FACTORS?
→ MFA

NO TRADITIONAL PASSWORD?
→ Passwordless

ONE SIGN-IN FOR MANY APPS?
→ SSO

SIGNALS / CONDITIONS → ACCESS DECISION?
→ Conditional Access

EXTERNAL PARTNER?
→ External Identities / B2B
```
