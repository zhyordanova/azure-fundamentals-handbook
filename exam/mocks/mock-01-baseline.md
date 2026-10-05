# Mock 01 — Baseline Mixed AZ-900 Exam

**Phase:** 6.6  
**Status:** Complete  
**Questions:** 40  
**Score:** **34 / 40 (85%)**

> Full baseline archive. Every question, answer option, submitted answer, correct answer, and result is preserved. Detailed decision rules are added to incorrect questions.

## Table of Contents

- [Questions 1–10](#questions-110)
- [Questions 11–20](#questions-1120)
- [Questions 21–30](#questions-2130)
- [Questions 31–40](#questions-3140)
- [Incorrect Questions Review](#incorrect-questions-review)
- [Final Result](#final-result)

# Questions 1–10

## Question 1

**Single choice — Best answer**

A company runs an application on several Azure virtual machines.

During periods of high demand, the company wants to **automatically add more VM instances**. When demand decreases, the additional instances should be removed.

Which cloud capability does this requirement primarily describe?

**A.** High availability  
**B.** Elasticity  
**C.** Vertical scaling  
**D.** Geo-distribution

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 2

**Choose TWO answers.**

A company wants to improve the security of user sign-ins to Azure.

Which **TWO** statements are correct?

**A.** MFA requires users to provide two or more authentication factors.  
**B.** Passwordless authentication always requires users to enter a password before using another factor.  
**C.** Conditional Access can use signals such as location or device state to determine whether MFA should be required.  
**D.** Single Sign-On requires users to authenticate separately to every application.  
**E.** Azure RBAC determines which authentication factors a user must provide.

**My Answer:** A, C  
**Correct Answer:** A, C  
**Result:** ✅

## Question 3

**Single choice — Best answer**

A company needs to connect its on-premises network to Azure.

The connection must:

- provide **private, dedicated connectivity**;
- avoid sending traffic over the public internet;
- provide more predictable network performance.

Which Azure service is the **best fit**?

**A.** VPN Gateway  
**B.** VNet Peering  
**C.** ExpressRoute  
**D.** Azure Bastion

**My Answer:** A — VPN Gateway  
**Correct Answer:** C — ExpressRoute  
**Result:** ❌

### Decision Rule

```text
Encrypted connection over public Internet
→ VPN Gateway

Dedicated private connectivity
→ ExpressRoute
```

## Question 4

**Yes / No — Azure Architecture**

For each statement, answer **Yes** or **No**.

1. An Availability Zone is a physically separate location within an Azure region.
2. Resources in the same Resource Group must be deployed in the same Azure region.
3. A Management Group can contain multiple Azure subscriptions.
4. A Resource Group can contain different types of Azure resources.

**My Answer:** 1 Yes, 2 No, 3 Yes, 4 Yes  
**Correct Answer:** 1 Yes, 2 No, 3 Yes, 4 Yes  
**Result:** ✅

## Question 5

**Single choice — Best answer**

A company stores business-critical data in an Azure Storage account.

The company requires the data to be replicated:

- across multiple **Availability Zones** in the primary region; and
- to a **secondary Azure region** for regional disaster protection.

Which redundancy option is the **best fit**?

**A.** LRS  
**B.** ZRS  
**C.** GRS  
**D.** GZRS

**My Answer:** D  
**Correct Answer:** D  
**Result:** ✅

## Question 6

**Single choice — Best answer**

A company wants to deploy a web application to Azure.

The developers want to manage the **application code and data**, but they do **not** want to manage the operating system or underlying infrastructure.

Which Azure service is the **best fit**?

**A.** Azure Virtual Machines  
**B.** Azure App Service  
**C.** Azure Virtual Desktop  
**D.** Azure Kubernetes Service

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 7

**Matching — Azure Management Tools**

Match each requirement to the **best Azure tool or capability**.

1. Manage Azure resources through a graphical web interface
2. Use a browser-hosted command-line environment without installing tools locally
3. Manage on-premises and multicloud resources through Azure management capabilities
4. Define Azure infrastructure declaratively in JSON for repeatable deployments

Options:

**A.** Azure Arc  
**B.** Azure Portal  
**C.** Azure Cloud Shell  
**D.** ARM Template

**My Answer:** 1B, 2C, 3A, 4D  
**Correct Answer:** 1B, 2C, 3A, 4D  
**Result:** ✅

## Question 8

**Single choice — Best answer**

A company wants to prevent users from deploying Azure resources in **unapproved regions**.

Users should still retain their existing permissions to create and manage resources in approved regions.

Which Azure capability is the **best fit**?

**A.** Azure RBAC  
**B.** Azure Policy  
**C.** Resource Lock  
**D.** Conditional Access

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 9

**Choose TWO answers.**

A company is comparing **Azure Pricing Calculator** and **Microsoft Cost Management**.

Which **TWO** statements are correct?

**A.** Azure Pricing Calculator can estimate the expected cost of a planned Azure solution before deployment.  
**B.** Microsoft Cost Management is primarily used to estimate the cost of resources that have not yet been deployed.  
**C.** Microsoft Cost Management can analyze actual Azure spending and cost trends.  
**D.** Azure Pricing Calculator automatically stops resources when a budget threshold is reached.  
**E.** Microsoft Cost Management provides dedicated private network connectivity to Azure.

**My Answer:** A, C  
**Correct Answer:** A, C  
**Result:** ✅

## Question 10

**Single choice — Best answer**

A company wants Azure to provide recommendations for a virtual machine that is consistently **underutilized**, so the company can reduce unnecessary costs.

Which service is the **best fit**?

**A.** Azure Monitor  
**B.** Azure Advisor  
**C.** Microsoft Cost Management  
**D.** Azure Pricing Calculator

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

# Questions 11–20

## Question 11

**Single choice — Best answer**

A company has an Azure virtual machine containing a critical application.

Administrators must still be able to **modify the VM**, but the company wants to prevent the VM from being **accidentally deleted**, even by users who otherwise have sufficient permissions.

Which option is the **best fit**?

**A.** Reader RBAC role  
**B.** ReadOnly Resource Lock  
**C.** CanNotDelete Resource Lock  
**D.** Azure Policy

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

## Question 12

**Single choice — Best answer**

A company needs to synchronize files between an **on-premises Windows Server file server** and **Azure Files**.

Users should continue to access the familiar Windows file server while selected files are synchronized with Azure.

Which service is the **best fit**?

**A.** Azure Data Box  
**B.** AzCopy  
**C.** Azure File Sync  
**D.** Azure Migrate

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

## Question 13

**Single choice — Best answer**

A company has an application that must execute a small piece of code whenever a new message arrives in a queue.

The company wants to:

- pay only when the code runs;
- avoid managing servers or operating systems;
- automatically handle changes in the number of events.

Which Azure service is the **best fit**?

**A.** Azure Virtual Machines  
**B.** Azure App Service  
**C.** Azure Functions  
**D.** Azure Virtual Desktop

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

## Question 14

**Matching — Identity & Security**

Match each requirement to the **best concept or service**.

1. Provide managed domain join, Group Policy, LDAP, and Kerberos/NTLM capabilities
2. Apply the principles **verify explicitly, use least privilege, and assume breach**
3. Improve cloud security posture and provide security recommendations
4. Allow a partner from another organization to collaborate using an external identity

Options:

**A.** Microsoft Defender for Cloud  
**B.** Microsoft Entra Domain Services  
**C.** Zero Trust  
**D.** Microsoft Entra External Identities / B2B

**My Answer:** 1B, 2C, 3A, 4D  
**Correct Answer:** 1B, 2C, 3A, 4D  
**Result:** ✅

## Question 15

**Choose TWO answers.**

A company uses an Azure Storage account for blob data.

Which **TWO** statements are correct?

**A.** The access tier of a blob can be changed after the blob is created.  
**B.** An Azure Storage account can be renamed after creation without creating a new account.  
**C.** Data in the Archive tier is immediately available for normal read operations without rehydration.  
**D.** The default access tier of a supported storage account can be changed.  
**E.** The Azure region of an existing storage account can be directly changed in place.

**My Answer:** A, D  
**Correct Answer:** A, D  
**Result:** ✅

## Question 16

**Single choice — Best answer**

A company wants to run a containerized application in Azure.

The requirements are:

- run containers without provisioning or managing virtual machines;
- avoid managing a Kubernetes cluster;
- start the container quickly for a relatively simple workload.

Which Azure service is the **best fit**?

**A.** Azure Kubernetes Service (AKS)  
**B.** Azure Container Instances (ACI)  
**C.** Azure Virtual Machine Scale Sets  
**D.** Azure App Service

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 17

**Single choice — Best answer**

An organization wants to collect and query log data from multiple Azure resources.

Administrators need to use **Kusto Query Language (KQL)** to analyze the collected logs.

Which Azure capability is the **best fit**?

**A.** Application Insights  
**B.** Azure Advisor  
**C.** Log Analytics  
**D.** Azure Service Health

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

## Question 18

**Single choice — Best answer**

A user has the **Contributor** role assigned at the **Subscription** scope.

The user needs to assign the **Reader** role to another employee for a Resource Group within that subscription.

Can the user create the role assignment?

**A.** Yes, because the Contributor role is assigned at the Subscription scope.  
**B.** Yes, because Reader has fewer permissions than Contributor.  
**C.** No, because Contributor does not include permission to manage Azure RBAC role assignments.  
**D.** No, because role assignments can only be created by Global Administrators.

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

## Question 19

**Single choice — Best answer**

A company needs to transfer **hundreds of terabytes of data** from its on-premises datacenter to Azure.

The available network connection is too slow to complete the transfer within the required time.

Which Azure solution is the **best fit**?

**A.** Azure File Sync  
**B.** Azure Data Box  
**C.** Storage Explorer  
**D.** VNet Peering

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 20

**Single choice — Best answer**

A company wants employees to use the **same identity** to access resources in both its on-premises environment and Microsoft cloud services.

Which concept is the **best fit**?

**A.** Single Sign-On (SSO)  
**B.** Hybrid Identity  
**C.** Multi-Factor Authentication (MFA)  
**D.** External Identities / B2B

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

# Questions 21–30

## Question 21

**Yes / No — Cost Management**

For each statement, answer **Yes** or **No**.

1. A Microsoft Cost Management budget can trigger a notification when a configured spending threshold is reached.
2. Reaching a budget threshold automatically stops Azure resources from generating additional charges.
3. Azure Pricing Calculator can be used to estimate costs before resources are deployed.
4. Azure Advisor can recommend actions for underutilized resources that may help reduce costs.

**My Answer:** 1 Yes, 2 No, 3 Yes, 4 Yes  
**Correct Answer:** 1 Yes, 2 No, 3 Yes, 4 Yes  
**Result:** ✅

## Question 22

**Single choice — Best answer**

A company has a stable production workload that is expected to run continuously for a long period.

The workload **cannot tolerate interruptions**, and the company is willing to make a commitment in exchange for lower cost. It does **not** require the broader flexibility offered by a Savings Plan.

Which pricing option is the **best fit**?

**A.** Spot VMs  
**B.** Pay-as-you-go  
**C.** Azure Reservations  
**D.** Azure Pricing Calculator

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

## Question 23

**Single choice — Best answer**

A company needs to protect an application from the failure of a **single datacenter location within an Azure region**.

The application should remain in the **same Azure region**.

Which Azure architecture concept is the **best fit**?

**A.** Region Pair  
**B.** Availability Zone  
**C.** Management Group  
**D.** Sovereign Region

**My Answer:** D — Sovereign Region  
**Correct Answer:** B — Availability Zone  
**Result:** ❌

### Decision Rule

```text
Datacenter-level failure
+
same Azure region
→ Availability Zone

National / governmental / regulatory isolation
→ Sovereign cloud / region
```

## Question 24

**Choose TWO answers.**

Which **TWO** statements about Azure service models and shared responsibility are correct?

**A.** In IaaS, the customer is responsible for managing the guest operating system.  
**B.** In PaaS, the customer is responsible for maintaining the physical servers.  
**C.** In SaaS, the customer has no responsibility for identities, access, or data.  
**D.** In PaaS, Microsoft manages the underlying operating system.  
**E.** In IaaS, Microsoft manages the applications installed inside the customer's virtual machines.

**My Answer:** D, E  
**Correct Answer:** A, D  
**Result:** ❌

### Decision Rule

```text
IaaS

Microsoft
→ physical infrastructure

Customer
→ guest OS
→ applications
→ data

PaaS
→ Microsoft manages the underlying OS
```

**Status:** 🔴 **RECURRING**

## Question 25

**Single choice — Best answer**

A company needs to allow inbound HTTPS traffic to a group of Azure virtual machines while blocking other unwanted inbound traffic.

Which Azure resource is the **best fit** for defining these allow/deny network traffic rules?

**A.** Azure DNS  
**B.** Network Security Group (NSG)  
**C.** VNet Peering  
**D.** ExpressRoute

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 26

**Single choice — Best answer**

A company wants to store application messages so that one component can place messages in storage and another component can process them later.

The goal is to **decouple the application components** and support asynchronous processing.

Which Azure Storage service is the **best fit**?

**A.** Azure Files  
**B.** Azure Blob Storage  
**C.** Azure Queue Storage  
**D.** Azure Table Storage

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

## Question 27

**Single choice — Best answer**

A company wants to manage resources by using commands from a **browser**, without installing Azure management tools on the administrator's local computer.

The administrator wants an environment where they can run **Azure CLI or Azure PowerShell**.

Which option is the **best fit**?

**A.** Azure Portal  
**B.** Azure Cloud Shell  
**C.** Azure Arc  
**D.** Azure Resource Manager

**My Answer:** A — Azure Portal  
**Correct Answer:** B — Azure Cloud Shell  
**Result:** ❌

### Decision Rule

```text
Graphical browser management
→ Azure Portal

Browser-hosted command environment
→ Azure Cloud Shell

Azure CLI / Azure PowerShell
→ tools that can run in Cloud Shell
```

## Question 28

**Single choice — Best answer**

A company wants to define its Azure infrastructure in a **declarative JSON file** so that the same resources can be deployed repeatedly and consistently.

Which option is the **best fit**?

**A.** Azure Policy  
**B.** ARM Template  
**C.** Azure Advisor  
**D.** Azure Monitor

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 29

**Matching — Monitoring**

Match each requirement to the **best Azure service or capability**.

1. Analyze application requests, failures, performance, and dependencies
2. Query collected log data by using KQL
3. Receive recommendations based on Azure best practices
4. View Azure service incidents and planned maintenance that may affect your resources

Options:

**A.** Azure Advisor  
**B.** Application Insights  
**C.** Azure Service Health  
**D.** Log Analytics

**My Answer:** 1B, 2D, 3A, 4C  
**Correct Answer:** 1B, 2D, 3A, 4C  
**Result:** ✅

## Question 30

**Single choice — Best answer**

A company wants to use Azure services, but regulatory requirements require workloads and data to operate in a **separate, isolated cloud environment designed for specific national or governmental requirements**.

Which Azure concept is the **best fit**?

**A.** Availability Zone  
**B.** Region Pair  
**C.** Sovereign cloud / region  
**D.** Resource Group

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

# Questions 31–40

## Question 31

**Single choice — Best answer**

A company has two Azure virtual networks in different Azure regions.

The company wants resources in the two VNets to communicate **privately over the Microsoft backbone**, without using a VPN gateway or the public internet.

Which option is the **best fit**?

**A.** VNet Peering  
**B.** ExpressRoute  
**C.** Azure Bastion  
**D.** Network Security Group

**My Answer:** A  
**Correct Answer:** A  
**Result:** ✅

## Question 32

**Choose TWO answers.**

Which **TWO** statements about Azure Resource Groups are correct?

**A.** Every Azure resource belongs to a Resource Group.  
**B.** All resources in a Resource Group must be deployed in the same Azure region.  
**C.** A Resource Group can contain different types of Azure resources.  
**D.** A single Azure resource can belong to multiple Resource Groups at the same time.  
**E.** A Resource Group can contain multiple Azure subscriptions.

**My Answer:** C, E  
**Correct Answer:** A, C  
**Result:** ❌

### Decision Rule

```text
Management Group
↓
Subscription
↓
Resource Group
↓
Resource
```

```text
Subscription
→ contains Resource Groups

Resource Group
→ contains Resources

Every Azure resource
→ belongs to one Resource Group
```

## Question 33

**Single choice — Best answer**

A company has several Azure subscriptions and wants to apply organizational governance across those subscriptions from a higher level in the Azure resource hierarchy.

Which Azure scope is the **best fit**?

**A.** Resource Group  
**B.** Management Group  
**C.** Availability Zone  
**D.** Azure Region

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 34

**Single choice — Best answer**

A company stores blob data that is accessed **very rarely**, but the data must remain **online and immediately available** when needed.

The company wants a lower storage cost than the Cool tier and does **not** want to rehydrate the data before access.

Which access tier is the **best fit**?

**A.** Hot  
**B.** Cool  
**C.** Cold  
**D.** Archive

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

## Question 35

**Single choice — Best answer**

A company wants employees to authenticate **without using a traditional password**.

Which identity capability is the **best fit**?

**A.** Multi-Factor Authentication (MFA)  
**B.** Passwordless authentication  
**C.** Single Sign-On (SSO)  
**D.** Azure RBAC

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 36

**Single choice — Best answer**

A company wants a security approach based on these principles:

- **verify explicitly**;
- use **least-privilege access**;
- **assume breach**.

Which security model is being described?

**A.** Defense in Depth  
**B.** Zero Trust  
**C.** Conditional Access  
**D.** Microsoft Defender for Cloud

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 37

**Single choice — Best answer**

A company wants to improve security by using **multiple layers of protection**, so that if one security control fails, another layer can still help protect the environment.

Which security concept is being described?

**A.** Zero Trust  
**B.** Defense in Depth  
**C.** Conditional Access  
**D.** Microsoft Entra Domain Services

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

## Question 38

**Single choice — Best answer**

A company wants to organize Azure resources by adding information such as:

- `Department = Finance`
- `Environment = Production`
- `Project = Website`

The information should help with **categorization, filtering, and cost analysis**.

Which Azure feature is the **best fit**?

**A.** Azure Policy  
**B.** Resource Tags  
**C.** Resource Locks  
**D.** Azure RBAC

**My Answer:** A — Azure Policy  
**Correct Answer:** B — Resource Tags  
**Result:** ❌

### Decision Rule

```text
ADD / STORE metadata
→ Resource Tags

REQUIRE / ENFORCE metadata
→ Azure Policy
```

## Question 39

**Single choice — Best answer**

A company wants to run a production workload on Azure virtual machines.

The workload:

- **cannot tolerate interruptions**;
- has relatively **unpredictable usage**;
- may need to scale up or down significantly;
- should **not require a long-term spending or usage commitment**.

Which pricing option is the **best fit**?

**A.** Spot VMs  
**B.** Azure Reservations  
**C.** Savings Plan for Compute  
**D.** Pay-as-you-go

**My Answer:** D  
**Correct Answer:** D  
**Result:** ✅

## Question 40

**Matching — Final Mixed Scenario**

Match each requirement to the **best Azure service or concept**.

1. Govern and discover an organization's **data estate** across environments
2. Obtain Microsoft's **audit reports and compliance documentation**
3. Manage **on-premises and multicloud resources** through Azure management capabilities
4. Protect an Azure resource from **both modification and deletion**

Options:

**A.** Microsoft Purview  
**B.** Service Trust Portal  
**C.** Azure Arc  
**D.** ReadOnly Resource Lock

**My Answer:** 1A, 2B, 3C, 4D  
**Correct Answer:** 1A, 2B, 3C, 4D  
**Result:** ✅

# Incorrect Questions Review

| Question | Area | My Answer | Correct Answer | Status |
|---|---|---|---|---|
| **Q3** | Networking | VPN Gateway | ExpressRoute | **ACTIVE** |
| **Q23** | Azure Architecture | Sovereign Region | Availability Zone | **ACTIVE** |
| **Q24** | Service Models | D, E | A, D | **RECURRING** |
| **Q27** | Management Tools | Azure Portal | Azure Cloud Shell | **ACTIVE** |
| **Q32** | Azure Architecture | C, E | A, C | **ACTIVE** |
| **Q38** | Governance | Azure Policy | Resource Tags | **ACTIVE** |

## Weak-Area Priority

```text
1. IaaS Shared Responsibility
   → RECURRING

2. VPN Gateway vs ExpressRoute
   → ACTIVE

3. Availability Zone vs Sovereign Region
   → ACTIVE

4. Cloud Shell vs Azure Portal
   → ACTIVE

5. Resource hierarchy
   → ACTIVE

6. Resource Tags vs Azure Policy
   → ACTIVE
```

# Final Result

| Metric | Result |
|---|---:|
| Correct | **34 / 40** |
| Incorrect | **6 / 40** |
| Score | **85%** |
| Recurring weak areas | **1** |
| Active weak areas | **5** |
| Targeted trap round required | **Yes** |

## Next Step

Run **Phase 6.7 — Targeted Trap Round** using **different wording and scenarios** for the six weak areas.

> **Do not memorize the questions. Use the archive to reconstruct the reasoning.**
