# Mock 03 — Final Readiness AZ-900 Exam

**Status:** Complete  
**Questions:** 40  
**Score:** **34 / 40 (85%)**

> Full archive of Mock 03. Every question includes the submitted answer, correct answer, and result.


## Question 1

A company is moving a web application to Azure. Developers manage application code, while Microsoft should manage physical infrastructure, OS, and hosting platform. No OS-level control is required. Which service model is best?

**A.** IaaS
**B.** PaaS
**C.** SaaS
**D.** On-premises

**My Answer:** A  
**Correct Answer:** B  
**Result:** ❌

### Decision Rule

Need OS control → IaaS. No OS management → PaaS.

## Question 2

Data must survive an Availability Zone failure in the primary region and also be replicated to a secondary region. Which redundancy option is best?

**A.** LRS
**B.** ZRS
**C.** GRS
**D.** GZRS

**My Answer:** D  
**Correct Answer:** D  
**Result:** ✅

## Question 3

On-premises and other-cloud servers remain where they are, but must be managed and governed using Azure capabilities. Which service?

**A.** Azure Migrate
**B.** Azure Arc
**C.** Azure Data Box
**D.** Azure File Sync

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 4

Choose TWO: Which statements are correct?

**A.** RBAC determines permitted Azure resource actions.
**B.** MFA determines resource authorization.
**C.** Conditional Access can use location/device/risk signals.
**D.** SSO requires separate authentication per app.
**E.** Passwordless requires a traditional password first.

**My Answer:** A, C  
**Correct Answer:** A, C  
**Result:** ✅

## Question 5

Need an encrypted on-premises-to-Azure connection; public internet is acceptable and no dedicated circuit is required. Best fit?

**A.** ExpressRoute
**B.** VPN Gateway
**C.** VNet Peering
**D.** Azure Bastion

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 6

Deploy Azure resources with a repeatable declarative JSON infrastructure definition. Best fit?

**A.** Azure Policy
**B.** ARM Template
**C.** Azure Cloud Shell
**D.** Azure Advisor

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 7

Add Department, Environment, and Project metadata for filtering, categorization, and cost reporting; no enforcement required. Best fit?

**A.** Azure Policy
**B.** Resource Tags
**C.** Azure RBAC
**D.** Resource Locks

**My Answer:** A  
**Correct Answer:** B  
**Result:** ❌

### Decision Rule

Store metadata → Tags. Enforce metadata rules → Policy.

## Question 8

Before moving on-premises servers to Azure, discover servers, assess readiness, analyze dependencies, and estimate sizing. Best fit?

**A.** Azure Arc
**B.** Azure Migrate
**C.** Azure Monitor
**D.** Azure File Sync

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 9

Predictable compute, no interruptions, commitment to compute spending, but flexibility across eligible compute services/configurations is required. Best fit?

**A.** Spot VMs
**B.** Azure Reservations
**C.** Savings Plan for Compute
**D.** Pay-as-you-go

**My Answer:** B  
**Correct Answer:** C  
**Result:** ❌

### Decision Rule

Specific stable commitment → Reservation. Predictable compute + flexibility → Savings Plan.

## Question 10

Prevent accidental deletion while allowing authorized modification. Best fit?

**A.** ReadOnly Resource Lock
**B.** CanNotDelete Resource Lock
**C.** Azure Policy
**D.** Reader RBAC role

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 11

Match: KQL logs; app telemetry; service incidents/maintenance; best-practice recommendations.

**A.** Azure Advisor
**B.** Log Analytics
**C.** Application Insights
**D.** Azure Service Health

**My Answer:** 1B, 2C, 3D, 4A  
**Correct Answer:** 1B, 2C, 3D, 4A  
**Result:** ✅

## Question 12

Choose TWO correct Azure architecture statements.

**A.** Availability Zone is physically separate within a region.
**B.** Sovereign cloud protects against zone failure.
**C.** Region Pair relates two Azure regions.
**D.** Availability Zone is a separate region.
**E.** Resource Group defines data-residency geography.

**My Answer:** A, C  
**Correct Answer:** A, C  
**Result:** ✅

## Question 13

Run a container with no VM administration, no Kubernetes administration, and minimal management. Best fit?

**A.** AKS
**B.** ACI
**C.** Azure VMs
**D.** VM Scale Sets

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 14

Stable workload, specific VM configuration for three years, no interruptions, long-term commitment. Best fit?

**A.** Spot VMs
**B.** Azure Reservations
**C.** Savings Plan
**D.** Pay-as-you-go

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 15

Application requires full OS control, custom server software, and customer OS configuration/patching. Best fit?

**A.** Azure App Service
**B.** Azure Functions
**C.** Azure Virtual Machine
**D.** Microsoft 365

**My Answer:** A  
**Correct Answer:** C  
**Result:** ❌

### Decision Rule

OS control/custom server software → VM/IaaS. No OS management → App Service/PaaS.

## Question 16

Yes/No: IaaS customer manages guest OS; PaaS Microsoft manages OS; SaaS customer has no data/identity/access responsibility; IaaS Microsoft manages physical datacenter.


**My Answer:** 1 Yes, 2 Yes, 3 No, 4 Yes  
**Correct Answer:** 1 Yes, 2 Yes, 3 No, 4 Yes  
**Result:** ✅

## Question 17

Rarely accessed blob data must remain online and immediately accessible, lower cost than Cool, no rehydration. Best tier?

**A.** Hot
**B.** Cool
**C.** Cold
**D.** Archive

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

## Question 18

Prevent deployment of unapproved VM sizes while retaining users' permissions for compliant VMs. Best fit?

**A.** Azure RBAC
**B.** Azure Policy
**C.** Resource Tags
**D.** Resource Lock

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 19

Run code when a file is uploaded: event-driven, automatic scaling, no server/OS management, consumption execution. Best fit?

**A.** Azure VMs
**B.** App Service
**C.** Azure Functions
**D.** AVD

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

## Question 20

Analyze actual Azure spending, cost trends, and configure budgets. Best tool?

**A.** Pricing Calculator
**B.** Microsoft Cost Management
**C.** Advisor
**D.** Monitor

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 21

Increase CPU and RAM of an existing VM rather than adding instances. Which scaling?

**A.** Horizontal / out
**B.** Vertical / up
**C.** Elasticity
**D.** High availability

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 22

Apply governance across several subscriptions from a common parent scope. Best scope?

**A.** Resource Group
**B.** Management Group
**C.** Region
**D.** Availability Zone

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 23

Transfer hundreds of TB from on-premises to Azure when network is too slow. Best solution?

**A.** File Sync
**B.** AzCopy
**C.** Data Box
**D.** Storage Explorer

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

## Question 24

Managed Azure file share supporting SMB. Best service?

**A.** Blob
**B.** Azure Files
**C.** Queue
**D.** Managed Disks

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 25

Run Azure CLI commands from a web browser without local CLI installation. Which environment?

**A.** Portal
**B.** Cloud Shell
**C.** Arc
**D.** ARM

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 26

Store messages for asynchronous communication and application decoupling. Best storage service?

**A.** Files
**B.** Blob
**C.** Queue
**D.** Table

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

## Question 27

Authenticate without a traditional password. Best capability?

**A.** MFA
**B.** Passwordless
**C.** SSO
**D.** RBAC

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 28

Improve cloud security posture and receive security recommendations. Best service?

**A.** Defender for Cloud
**B.** Service Health
**C.** Purview
**D.** Entra Domain Services

**My Answer:** A  
**Correct Answer:** A  
**Result:** ✅

## Question 29

Use the same identity for on-premises and Microsoft cloud resources. Best concept?

**A.** SSO
**B.** Hybrid Identity
**C.** Conditional Access
**D.** External Identities

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 30

NoSQL key-value entities using PartitionKey and RowKey. Best storage service?

**A.** Blob
**B.** Files
**C.** Queue
**D.** Table

**My Answer:** D  
**Correct Answer:** D  
**Result:** ✅

## Question 31

Secure RDP/SSH through Azure portal without public IPs on VMs. Best service?

**A.** VPN Gateway
**B.** Azure Bastion
**C.** ExpressRoute
**D.** NSG

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 32

Store unstructured objects such as images, video, and backups. Best service?

**A.** Files
**B.** Blob Storage
**C.** Queue
**D.** Managed Disks

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 33

Notify when Azure spending reaches 80% of monthly amount; do not automatically stop resources. Best fit?

**A.** Pricing Calculator
**B.** Cost Management Budget
**C.** Advisor
**D.** Resource Lock

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 34

Managed domain join, Group Policy, LDAP, Kerberos/NTLM without managing domain controllers. Best service?

**A.** Entra ID
**B.** Entra Domain Services
**C.** RBAC
**D.** External Identities

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 35

Verify explicitly, least privilege, assume breach. Which model?

**A.** Defense in Depth
**B.** Zero Trust
**C.** Conditional Access
**D.** Defender for Cloud

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 36

Multiple layers of security so another layer protects if one fails. Which concept?

**A.** Zero Trust
**B.** Defense in Depth
**C.** Conditional Access
**D.** RBAC

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 37

Estimate monthly cost before resources are deployed. Best tool?

**A.** Cost Management
**B.** Pricing Calculator
**C.** Advisor
**D.** Monitor

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 38

Govern and discover the organization's data estate and data assets. Best service?

**A.** Microsoft Purview
**B.** Service Trust Portal
**C.** Advisor
**D.** Defender for Cloud

**My Answer:** B  
**Correct Answer:** A  
**Result:** ❌

### Decision Rule

Your data estate → Purview. Microsoft compliance evidence → Service Trust Portal.

## Question 39

Access Microsoft's audit reports, compliance documentation, and regulatory evidence. Best resource?

**A.** Purview
**B.** Service Trust Portal
**C.** Azure Policy
**D.** Defender for Cloud

**My Answer:** C  
**Correct Answer:** B  
**Result:** ❌

### Decision Rule

Microsoft audit/compliance documentation → Service Trust Portal.

## Question 40

Match: permissions; configuration governance; prevent delete but allow modify; metadata for categorization/cost.

**A.** Resource Tags
**B.** Azure Policy
**C.** Azure RBAC
**D.** CanNotDelete Resource Lock

**My Answer:** 1C, 2B, 3D, 4A  
**Correct Answer:** 1C, 2B, 3D, 4A  
**Result:** ✅

# Final Result

| Metric | Result |
|---|---:|
| Correct | **34 / 40** |
| Incorrect | **6 / 40** |
| Score | **85%** |
