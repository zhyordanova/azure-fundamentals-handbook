# Azure Arc and Infrastructure as Code

## Azure Arc
Azure Arc extends Azure management and governance capabilities to resources outside Azure, including on-premises and multicloud environments.

```text
Manage Azure resources
→ native Azure management

Bring non-Azure / on-premises resources
into Azure management and governance
→ Azure Arc
```

Azure Arc provides a consistent management experience across distributed environments.

## Infrastructure as Code (IaC)
Infrastructure as Code defines infrastructure in files/code instead of relying only on manual configuration.

Benefits include:

- repeatable deployments;
- consistent environments;
- version-controlled infrastructure definitions;
- automation.

```text
Define desired infrastructure in code
→ Infrastructure as Code
```

## ARM Templates
ARM templates are an Azure-native IaC option. They use declarative JSON to define Azure resources and configuration.

```text
ARM
→ Azure management and deployment layer

ARM template
→ declarative JSON infrastructure definition
```

ARM templates can be deployed through tools such as Azure portal, Azure CLI, Azure PowerShell, REST APIs, and Azure Cloud Shell.

## Decision Factors
```text
Manage resources across Azure + on-premises + other clouds
→ Azure Arc

Repeatable infrastructure deployment from code
→ IaC

Declarative JSON definition for Azure resources
→ ARM template
```

## Common Mistakes
Azure Arc is not an IaC language, and an ARM template is not the same thing as Azure Resource Manager itself.

## Exam Reasoning
Ask what the scenario is trying to achieve:

```text
EXTEND Azure management outside Azure?
→ Azure Arc

DEFINE infrastructure as code?
→ IaC

USE Azure-native declarative JSON deployment?
→ ARM template
```
