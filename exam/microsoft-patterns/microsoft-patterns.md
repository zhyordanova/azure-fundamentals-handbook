# Microsoft Exam Question Patterns

> A practical guide for recognizing how AZ-900 concepts are tested.

This file is **not a question bank** and should not be memorized as one.

Microsoft questions often test whether you can:

``` text
identify the requirement
↓
separate similar concepts
↓
respect scope and constraints
↓
choose the best fit
```

Use this together with:

-   `concept-map.md` for relationships between concepts
-   `trigger-words.md` for confirmation clues
-   decision trees for service selection
-   mock exams for practice

------------------------------------------------------------------------

## 1. Best-Fit Scenario

### Pattern

A scenario describes a business or technical requirement and asks for
the **best** Azure service, feature, or concept.

Typical wording:

``` text
Which service should you use?
Which option is the best fit?
Which solution meets the requirements?
```

### How to Solve

Do not select the first technically possible answer.

Ask:

``` text
1. What problem must be solved?
2. What constraints are stated?
3. Which answers are technically valid?
4. Which valid answer fits the constraints best?
```

### Example Reasoning

``` text
Need protection from Availability Zone failure
+
regional protection is NOT required
+
avoid unnecessary cost

→ ZRS
```

GZRS provides more protection, but it exceeds the stated requirement.

> **More capability does not automatically mean better fit.**

------------------------------------------------------------------------

## 2. Matching / Classification

### Pattern

Several services, concepts, or scenarios must be matched to their
correct category.

Common areas:

``` text
IaaS / PaaS / SaaS
Storage services
Identity concepts
Governance tools
Monitoring services
Cost tools
```

### How to Solve

Classify each item independently.

Do not assume every option must be used once unless the question
explicitly says so.

### High-Value Example

``` text
Azure Virtual Machines
→ IaaS

Azure App Service
→ PaaS

Azure SQL Database
→ PaaS

Microsoft 365
→ SaaS
```

For scenarios:

``` text
Manage OS
→ IaaS

Build/deploy application without managing OS
→ PaaS

Use finished application
→ SaaS
```

------------------------------------------------------------------------

## 3. Yes / No Statements

### Pattern

Several statements must each be evaluated independently.

Typical format:

``` text
Statement 1 → Yes / No
Statement 2 → Yes / No
Statement 3 → Yes / No
```

### How to Solve

Reset after every statement.

Do not let the answer to one statement influence the next.

Watch for absolute wording:

``` text
always
automatically
only
never
all
```

These words often change an otherwise plausible statement.

### Example

``` text
Tags on a Resource Group are automatically inherited
by all resources.

→ NO
```

versus:

``` text
A Policy assigned at a Resource Group can apply
to resources in that Resource Group.

→ YES
```

------------------------------------------------------------------------

## 4. Choose TWO / Choose THREE

### Pattern

More than one answer is correct.

Typical wording:

``` text
Which TWO statements are correct?
Select THREE answers.
```

### How to Solve

Treat every option as a separate True/False statement.

Then verify that you selected **exactly** the requested number.

``` text
A → true?
B → true?
C → true?
D → true?
E → true?

Then count.
```

### Common Trap

One correct answer is often obvious while the second requires a
distinction.

Example:

``` text
Owner
→ manages resources + role assignments

Contributor
→ manages resources
→ cannot manage role assignments
```

Do not select an answer merely because it sounds more privileged.

------------------------------------------------------------------------

## 5. Scope and Inheritance

### Pattern

The service or role is correct, but the question tests **where** it
applies.

Common scope hierarchy:

``` text
Management Group
↓
Subscription
↓
Resource Group
↓
Resource
```

### High-Value Areas

``` text
Azure RBAC
Azure Policy
Resource Locks
Tags
```

### Reasoning

``` text
WHAT permission/rule/protection exists?
+
AT WHAT SCOPE?
```

Examples:

``` text
Owner at Subscription
→ can manage applicable RBAC assignments below

Owner only at Resource Group B
→ does not gain authority over Resource Group A
```

Inheritance trap:

``` text
RBAC parent scope
→ can apply below

Policy parent scope
→ can apply below

Resource Lock parent scope
→ inherited below

Tags
→ NOT automatically inherited
```

> **Higher scope broadens WHERE a permission applies; it does not invent
> permissions the role does not contain.**

Example:

``` text
Contributor at Subscription
→ broader Contributor scope
→ still cannot manage RBAC role assignments
```

------------------------------------------------------------------------

## 6. Who Created It? vs Who Can Manage It?

### Pattern

A question mentions that an administrator created a role assignment and
asks who else can change or manage it.

### Trap

Do not focus on the identity that created the assignment.

For Azure RBAC, ask:

``` text
Does the user have permission
to manage role assignments?
+
Does that permission apply
at the relevant scope?
```

Mental model:

``` text
Owner
→ resources + access

Contributor
→ resources, NOT role assignments

User Access Administrator
→ access

RBAC Administrator
→ RBAC access
```

> **Permission + Scope matter more than who originally created the
> assignment.**

------------------------------------------------------------------------

## 7. Administrative Actions Wording

### Pattern

A scenario mentions:

``` text
administrator
administrative action
accidental administrative action
```

### Trap

Do not automatically choose RBAC because the word **administrator**
appears.

Ask what must actually be controlled.

``` text
WHO is authorized?
→ Azure RBAC

WHAT configuration is allowed?
→ Azure Policy

Protect resource from deletion/modification?
→ Resource Lock
```

Example:

``` text
Authorized administrators may modify a resource
but must not delete it.

→ CanNotDelete
```

------------------------------------------------------------------------

## 8. Can / Cannot Change After Creation

### Pattern

The question tests whether a setting or property can be changed after a
resource is created.

This pattern appeared in Storage preparation and should be read
literally.

Examples:

``` text
Blob access tier
→ can change

Default online access tier
→ can change

Storage account name
→ cannot simply be renamed

Storage account region
→ cannot be directly changed in place
```

### How to Solve

Separate:

``` text
configuration
```

from:

``` text
resource identity / placement
```

Do not assume every creation-time choice is permanent.

------------------------------------------------------------------------

## 9. Lowest Cost With Requirements

### Pattern

The question asks for the lowest-cost option **that still meets the
requirements**.

### Trap

Do not choose the absolute cheapest service without checking
constraints.

Reason:

``` text
Requirements first
↓
eliminate invalid options
↓
cost breaks the tie
```

Examples:

``` text
Need zone resiliency
but not regional resiliency
→ ZRS

Interruptible compute workload
→ Spot VMs

Uncertain workload
+ cannot tolerate interruption
+ no commitment
→ Pay-as-you-go
```

> **Cheapest valid option, not simply cheapest option.**

------------------------------------------------------------------------

## 10. Least Administrative Effort

### Pattern

Multiple options can technically solve the problem, but the question
emphasizes:

``` text
least administrative effort
minimum management
avoid managing operating systems
fully managed
```

### Reasoning

Prefer the option that moves more operational responsibility to
Microsoft **while still meeting the requirement**.

Examples:

``` text
Host web application
without OS administration
→ Azure App Service

Event-driven code
without server management
→ Azure Functions

Run container
without managing VM or Kubernetes cluster
→ Azure Container Instances
```

Do not choose a VM merely because it can technically host the workload.

------------------------------------------------------------------------

## 11. Service vs Tool vs Environment

### Pattern

Several Azure products are related, but their roles are different.

High-value distinction:

``` text
Azure Portal
→ graphical management interface

Cloud Shell
→ browser-hosted shell environment

Azure CLI
→ command-line tool

Azure PowerShell
→ PowerShell management tool

Azure Resource Manager
→ management/deployment layer

ARM Template
→ declarative IaC definition
```

### Trap

``` text
Cloud Shell
≠ Azure CLI
```

Cloud Shell can provide an environment in which CLI or PowerShell is
used.

------------------------------------------------------------------------

## 12. Before vs After Deployment

### Pattern

The question distinguishes planning from operating an existing
environment.

Cost example:

``` text
BEFORE deployment
estimate expected cost
→ Azure Pricing Calculator

AFTER / DURING usage
analyze actual spending
→ Microsoft Cost Management
```

Migration example:

``` text
Discover / assess / plan migration
→ Azure Migrate

Physically move very large data
when network is impractical
→ Azure Data Box
```

Always identify **where in the lifecycle** the scenario occurs.

------------------------------------------------------------------------

## 13. Notification vs Enforcement

### Pattern

A service can notify about a condition, but the question implies that it
may enforce or stop something automatically.

High-value example:

``` text
Budget
→ threshold + notification

Budget
≠ hard spending limit
≠ automatic shutdown
```

Another distinction:

``` text
Azure Monitor Alert
→ notification/action when condition is met

Azure Policy
→ evaluates/enforces resource configuration
```

Do not turn a monitoring feature into an enforcement mechanism.

------------------------------------------------------------------------

## 14. Similar Service Names / Related Concepts

### Pattern

The options are all valid Azure concepts from the same area.

The question tests the boundary between them.

### Storage

``` text
Blob
→ objects

Files
→ SMB / NFS

Managed Disks
→ VM block storage

Queue
→ asynchronous messages

Table
→ key-value NoSQL
```

### Identity

``` text
Authentication
→ WHO ARE YOU?

Authorization / RBAC
→ WHAT CAN YOU DO?

MFA
→ multiple factors

Passwordless
→ no traditional password

Conditional Access
→ decides under what conditions access controls apply

SSO
→ fewer repeated sign-ins

Hybrid Identity
→ common identity across on-premises + cloud
```

### Governance

``` text
RBAC
→ permissions

Policy
→ configuration rules

Locks
→ delete/modify protection

Tags
→ metadata
```

### Monitoring

``` text
Azure Monitor
→ monitoring platform

Application Insights
→ application telemetry

Log Analytics
→ log queries

Advisor
→ recommendations

Service Health
→ Azure service issues relevant to you
```

------------------------------------------------------------------------

## 15. More Resilient Is Not Automatically Better

### Pattern

Several answers provide increasing levels of resilience.

The question asks for the best fit.

Example:

``` text
Need protection from zone failure
+
no regional requirement
→ ZRS
```

Do not automatically select:

``` text
GZRS
```

just because it provides additional protection.

The same principle applies broadly:

> **Meet the requirement without adding unnecessary capability, cost, or
> management.**

------------------------------------------------------------------------

## 16. Customer vs Microsoft Responsibility

### Pattern

The question asks who manages a layer in IaaS, PaaS, or SaaS.

Core model:

``` text
MORE CUSTOMER RESPONSIBILITY

On-premises
↓
IaaS
↓
PaaS
↓
SaaS

LESS CUSTOMER INFRASTRUCTURE RESPONSIBILITY
```

High-value distinctions:

``` text
IaaS guest OS
→ Customer

PaaS OS
→ Microsoft

SaaS application/platform
→ Microsoft

Customer data / identities / access responsibilities
→ remain relevant
```

### Trap

``` text
SaaS
≠ zero customer responsibility
```

------------------------------------------------------------------------

## 17. Failure Scope

### Pattern

The question describes a failure and asks which architecture concept
addresses it.

Reason from the **failure scope**:

``` text
Datacenter / zone failure
→ Availability Zones

Regional considerations / disaster recovery
→ multi-region design concepts

Local storage infrastructure
→ LRS

Zone-level storage failure
→ ZRS

Secondary-region storage replication
→ GRS

Zone + secondary region
→ GZRS
```

Do not treat Availability Zone and Region Pair as synonyms.

------------------------------------------------------------------------

## 18. Requirement vs Trigger Word

Microsoft-style questions may contain words associated with multiple
services.

Example:

``` text
"administrator"
```

could appear in an RBAC, Policy, or Resource Lock scenario.

Likewise:

``` text
"security"
```

could involve:

``` text
NSG
MFA
Conditional Access
RBAC
Zero Trust
Defender for Cloud
```

Therefore:

``` text
Trigger word
→ clue

Requirement
→ decision
```

------------------------------------------------------------------------

# Final Exam-Solving Algorithm

For scenario questions:

``` text
1. Identify the PROBLEM.

2. Identify the SCOPE / ENDPOINTS.

3. Extract explicit CONSTRAINTS.

4. Determine what type of question it is:
   - best fit
   - matching
   - Yes / No
   - Choose TWO / THREE
   - lowest cost
   - least administration
   - scope / inheritance
   - responsibility

5. Eliminate technically invalid options.

6. Compare the remaining valid options.

7. Choose the option that BEST FITS
   the stated requirements.

8. Use trigger words only as confirmation.
```

For multi-statement questions:

``` text
Evaluate every statement independently.
```

For multi-select:

``` text
Evaluate every option independently,
then verify the required answer count.
```

For best-fit:

``` text
More features
≠ automatically better.
```

> **Problem → Scope → Constraints → Valid Options → Best Fit**
