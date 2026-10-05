# Mock 02 — Decision & Trap AZ-900 Exam

**Phase:** 6 — Decision & Trap Exam  
**Status:** Complete  
**Questions:** 30  
**Score:** **25 / 30 (83.3%)**

> Full exam archive. Every question, answer option, submitted answer, correct answer, and result is preserved.

## Result Summary

| Metric | Result |
|---|---:|
| Correct | **25** |
| Incorrect | **5** |
| Score | **83.3%** |
| Targeted retest required | **Yes** |

## Question 1

**Single choice — Best answer**

A company needs to host a custom application in Azure.

The application requires:

- installation of specialized software at the operating-system level;
- custom configuration of the operating system;
- full administrative control over the server.

The company accepts the additional management responsibility required by the solution.

Which option is the **best fit**?

**A.** Azure App Service  
**B.** Azure Functions  
**C.** Azure Virtual Machine  
**D.** Azure Container Instances  

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

## Question 2

**Choose TWO answers — Governance & Scope**

A company has an Azure Policy assigned at the **Subscription** scope.

Which **TWO** statements are correct?

**A.** The policy can apply to Resource Groups and resources within that subscription.  
**B.** The policy automatically applies to resources in other subscriptions within the same Management Group.  
**C.** Azure Policy is used to control which actions a specific user is authorized to perform.  
**D.** Azure Policy can be used to evaluate whether Azure resources comply with organizational configuration requirements.  
**E.** Assigning a policy at Subscription scope automatically converts existing Resource Tags into inherited tags.  

**My Answer:** A, D  
**Correct Answer:** A, D  
**Result:** ✅

## Question 3

**Single choice — Lowest-cost best fit**

A company runs a batch-processing workload on Azure virtual machines.

The workload:

- can be interrupted and restarted later;
- does not require guaranteed continuous availability;
- should run at the **lowest possible compute cost**.

Which pricing option is the **best fit**?

**A.** Pay-as-you-go  
**B.** Azure Reservations  
**C.** Savings Plan for Compute  
**D.** Spot VMs  

**My Answer:** C  
**Correct Answer:** D  
**Result:** ❌

### Decision Rule

Interruptible / eviction-tolerant → Spot VMs; predictable compute + flexible commitment → Savings Plan.

## Question 4

**Single choice — Best answer**

An administrator needs to manage Azure resources by using a **cross-platform command-line tool**.

The tool should be usable from the administrator's local terminal and can also be used from Azure Cloud Shell.

Which option is the **best fit**?

**A.** Azure Portal  
**B.** Azure CLI  
**C.** Azure Cloud Shell  
**D.** Azure Arc  

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 5

**Single choice — Scope & RBAC**

A user has the **Owner** role assigned only at **Resource Group A**.

The user needs to create a role assignment for a resource located in **Resource Group B** within the same subscription.

The user has no other role assignments.

Can the user create the role assignment in Resource Group B?

**A.** Yes, because Owner can manage role assignments anywhere in the subscription.  
**B.** Yes, because both Resource Groups belong to the same subscription.  
**C.** No, because the Owner role assignment does not apply to Resource Group B.  
**D.** No, because only Global Administrators can create Azure RBAC role assignments.  

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

## Question 6

**Single choice — Monitoring vs Enforcement**

A company wants to receive a notification when the CPU utilization of an Azure virtual machine remains above 80% for a specified period.

The company does **not** want to restrict how the VM is configured.

Which option is the **best fit**?

**A.** Azure Policy  
**B.** Azure Monitor Alert  
**C.** Resource Lock  
**D.** Azure Advisor  

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 7

**Matching — Storage Services**

Match each requirement to the **best Azure storage service**.

1. Store unstructured objects such as images and backups
2. Provide a managed SMB file share
3. Store messages for asynchronous processing between application components
4. Provide persistent block storage for an Azure virtual machine

Options: A. Azure Files; B. Azure Blob Storage; C. Azure Queue Storage; D. Azure Managed Disks


**My Answer:** 1B, 2A, 3C, 4D  
**Correct Answer:** 1B, 2A, 3C, 4D  
**Result:** ✅

## Question 8

**Single choice — Shared Responsibility**

A company runs an application on an **Azure virtual machine**.

Which component is **Microsoft responsible for managing**?

**A.** The guest operating system  
**B.** Applications installed inside the VM  
**C.** The physical server hosting the VM  
**D.** The company's data stored inside the VM  

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

## Question 9

**Single choice — Best-fit connectivity**

A company needs to connect its on-premises network to Azure.

The requirements are:

- traffic must **not traverse the public internet**;
- the company requires a **dedicated private connection**;
- predictable connectivity is more important than minimizing cost.

Which option is the **best fit**?

**A.** VPN Gateway  
**B.** ExpressRoute  
**C.** VNet Peering  
**D.** Azure Bastion  

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 10

**Single choice — Tags vs Policy**

A company already uses a `Department` tag on Azure resources.

Management wants to ensure that **all newly deployed resources must include the `Department` tag**.

Which Azure feature is the **best fit** for enforcing this requirement?

**A.** Resource Tags  
**B.** Azure Policy  
**C.** Azure RBAC  
**D.** CanNotDelete Resource Lock  

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 11

**Choose TWO answers — Azure Architecture**

Which **TWO** statements are correct?

**A.** An Azure region can contain multiple Availability Zones.  
**B.** An Availability Zone is a separate Azure region.  
**C.** A Region Pair describes a relationship between two Azure regions.  
**D.** A Sovereign cloud is primarily designed to protect applications from the failure of one datacenter within a region.  
**E.** All Azure regions contain exactly three Availability Zones.  

**My Answer:** C, D  
**Correct Answer:** A, C  
**Result:** ❌

### Decision Rule

Region can contain Availability Zones; Region Pair relates two regions; Sovereign cloud is for national/governmental/regulatory isolation.

## Question 12

**Single choice — Least administrative effort**

A company needs to run a containerized application in Azure.

The company wants:

- Azure to manage the underlying infrastructure;
- no virtual machine administration;
- no Kubernetes cluster administration;
- the simplest option for running the container.

Which service is the **best fit**?

**A.** Azure Virtual Machines  
**B.** Azure Kubernetes Service (AKS)  
**C.** Azure Container Instances (ACI)  
**D.** Virtual Machine Scale Sets  

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

## Question 13

**Single choice — Cost Management**

A company wants to reduce Azure compute costs.

Its workload has **predictable compute usage**, but the company wants more flexibility across eligible compute services than a reservation tied to a specific resource configuration would provide.

Which pricing option is the **best fit**?

**A.** Spot VMs  
**B.** Savings Plan for Compute  
**C.** Pay-as-you-go  
**D.** Azure Pricing Calculator  

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 14

**Yes / No — Azure Resource Hierarchy**

For each statement, answer **Yes** or **No**.

1. A Management Group can contain multiple Azure subscriptions.
2. A Subscription can contain multiple Resource Groups.
3. A Resource Group can contain multiple Azure subscriptions.
4. An Azure resource can belong to multiple Resource Groups at the same time.


**My Answer:** 1 Yes, 2 Yes, 3 No, 4 No  
**Correct Answer:** 1 Yes, 2 Yes, 3 No, 4 No  
**Result:** ✅

## Question 15

**Single choice — Identity Best Fit**

A company wants users to sign in once and then access multiple authorized cloud applications **without being prompted to authenticate again for each application**.

Which identity capability is the **best fit**?

**A.** Hybrid Identity  
**B.** Single Sign-On (SSO)  
**C.** Multi-Factor Authentication (MFA)  
**D.** Microsoft Entra Domain Services  

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 16

**Single choice — Storage Access Tiers**

A company stores compliance records in Azure Blob Storage.

The data:

- is expected to remain unused for several years;
- should use the **lowest-cost storage tier**;
- does **not** need to remain immediately available;
- can tolerate a rehydration process before it is accessed.

Which access tier is the **best fit**?

**A.** Hot  
**B.** Cool  
**C.** Cold  
**D.** Archive  

**My Answer:** D  
**Correct Answer:** D  
**Result:** ✅

## Question 17

**Single choice — Governance Best Fit**

A company wants to protect a production Azure resource from **both accidental deletion and modification**.

Users should still be able to view the resource.

Which option is the **best fit**?

**A.** CanNotDelete Resource Lock  
**B.** ReadOnly Resource Lock  
**C.** Azure Policy  
**D.** Reader RBAC role  

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 18

**Single choice — Identity & Security**

A company wants access decisions to consider signals such as:

- user identity;
- device state;
- location;
- sign-in risk.

Depending on those signals, users may be required to complete MFA or may be blocked from accessing a resource.

Which capability is the **best fit**?

**A.** Azure RBAC  
**B.** Conditional Access  
**C.** Single Sign-On  
**D.** Microsoft Defender for Cloud  

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 19

**Single choice — Monitoring Best Fit**

A development team needs to investigate a web application's:

- failed requests;
- response times;
- dependencies on external services;
- application performance.

Which Azure capability is the **best fit**?

**A.** Azure Service Health  
**B.** Log Analytics  
**C.** Application Insights  
**D.** Azure Advisor  

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

## Question 20

**Single choice — Best answer**

A company has several on-premises servers and resources hosted with another cloud provider.

The company wants to bring these resources under Azure management so that it can apply Azure management and governance capabilities to them.

Which service is the **best fit**?

**A.** Azure Resource Manager  
**B.** Azure Arc  
**C.** Azure Migrate  
**D.** Azure Monitor  

**My Answer:** C  
**Correct Answer:** B  
**Result:** ❌

### Decision Rule

Manage on-premises/multicloud where they are → Azure Arc. Discover/assess/plan a move to Azure → Azure Migrate.

## Question 21

**Single choice — Cloud Concepts**

A retail application experiences a large increase in traffic during seasonal sales.

The system can increase and decrease its resources **automatically as demand changes**.

Which cloud concept does this primarily describe?

**A.** Scalability  
**B.** Elasticity  
**C.** High availability  
**D.** Geo-distribution  

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 22

**Choose TWO answers — Service Models**

Which **TWO** statements are correct?

**A.** In IaaS, the customer manages the guest operating system.  
**B.** In PaaS, the customer manages the physical servers that host the application.  
**C.** In SaaS, the customer is responsible for maintaining the application software provided by the service provider.  
**D.** In PaaS, Microsoft manages the underlying operating system.  
**E.** In IaaS, Microsoft installs and maintains applications inside the customer's virtual machines.  

**My Answer:** A, D  
**Correct Answer:** A, D  
**Result:** ✅

## Question 23

**Single choice — Storage Redundancy Best Fit**

A company stores data in Azure Storage.

The requirements are:

- protect the data if an **Availability Zone in the primary region fails**;
- keep all replicas within the **same Azure region**;
- avoid the additional cost of replication to a secondary region.

Which redundancy option is the **best fit**?

**A.** LRS  
**B.** ZRS  
**C.** GRS  
**D.** GZRS  

**My Answer:** D  
**Correct Answer:** B  
**Result:** ❌

### Decision Rule

Zone protection in one region → ZRS. Zone + secondary-region protection → GZRS.

## Question 24

**Single choice — Best answer**

A company wants to move several existing on-premises servers to Azure.

Before migrating, the company needs to:

- discover the existing servers;
- assess their readiness for Azure;
- estimate sizing and dependencies;
- plan the migration.

Which Azure service is the **best fit**?

**A.** Azure Data Box  
**B.** Azure File Sync  
**C.** Azure Migrate  
**D.** Azure Arc  

**My Answer:** D  
**Correct Answer:** C  
**Result:** ❌

### Decision Rule

Discover/assess/size/plan migration → Azure Migrate. Manage resources where they run → Azure Arc.

## Question 25

**Single choice — Best answer**

A company wants to deploy a governance rule that ensures Azure resources are created only in **approved regions**.

The rule should evaluate resource configuration regardless of which authorized user performs the deployment.

Which option is the **best fit**?

**A.** Azure RBAC  
**B.** Azure Policy  
**C.** Conditional Access  
**D.** Resource Tags  

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 26

**Single choice — Best answer**

A company wants to copy a large set of files from an on-premises server to Azure Blob Storage.

The administrator wants to perform the transfer by using a **command-line utility** designed for copying data to and from Azure Storage.

Which tool is the **best fit**?

**A.** Azure Storage Explorer  
**B.** AzCopy  
**C.** Azure File Sync  
**D.** Azure Data Box  

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 27

**Single choice — Best answer**

A company wants to estimate the expected monthly cost of a new Azure solution **before deploying any resources**.

Which tool is the **best fit**?

**A.** Microsoft Cost Management  
**B.** Azure Advisor  
**C.** Azure Pricing Calculator  
**D.** Azure Monitor  

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

## Question 28

**Single choice — Best answer**

A company wants to store metadata such as:

- `Department = Finance`
- `Environment = Production`
- `Owner = TeamA`

The metadata will be used to **categorize resources and analyze costs**. The company does **not** need to enforce whether the metadata is present.

Which Azure feature is the **best fit**?

**A.** Azure Policy  
**B.** Resource Tags  
**C.** Azure RBAC  
**D.** Resource Locks  

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 29

**Single choice — Best answer**

A company wants to store application data as simple key-value-style entities.

The solution should be a **NoSQL** store that uses concepts such as `PartitionKey` and `RowKey`.

Which Azure Storage service is the **best fit**?

**A.** Azure Blob Storage  
**B.** Azure Files  
**C.** Azure Queue Storage  
**D.** Azure Table Storage  

**My Answer:** D  
**Correct Answer:** D  
**Result:** ✅

## Question 30

**Matching — Final Decision Trap**

Match each requirement to the **best Azure service or concept**.

1. Receive information about Azure service incidents and planned maintenance that may affect your resources
2. Get recommendations to improve cost, reliability, performance, and security
3. Govern, discover, and understand an organization's data estate
4. Obtain Microsoft's audit reports and compliance documentation

Options: A. Microsoft Purview; B. Azure Advisor; C. Azure Service Health; D. Service Trust Portal


**My Answer:** 1C, 2B, 3A, 4D  
**Correct Answer:** 1C, 2B, 3A, 4D  
**Result:** ✅

# Incorrect Questions Review

| Question | Area | Status |
|---|---|---|
| Q3 | Spot VMs vs Savings Plan | **ACTIVE** |
| Q11 | Availability Zone vs Sovereign Region | **RECURRING** |
| Q20 | Azure Arc vs Azure Migrate | **ACTIVE — HIGH PRIORITY** |
| Q23 | ZRS vs GZRS | **ACTIVE** |
| Q24 | Azure Arc vs Azure Migrate | **ACTIVE — HIGH PRIORITY** |

# Final Result

| Metric | Result |
|---|---:|
| Correct | **25 / 30** |
| Incorrect | **5 / 30** |
| Score | **83.3%** |
| Targeted trap round required | **Yes** |

## Next Step

Targeted Trap Round 02:

```text
2 × Azure Arc vs Azure Migrate
1 × Availability Zone vs Sovereign Region
1 × Region / Zone / Region Pair
1 × Spot / Reservation / Savings Plan / Pay-as-you-go
1 × ZRS / GRS / GZRS
```
