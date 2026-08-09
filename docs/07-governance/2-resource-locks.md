# Resource Locks

## Definition

Azure Resource Locks help protect Azure resources from accidental deletion or modification.

A Resource Lock does not control who has permissions to access a resource. Instead, it protects the resource even if a user has sufficient permissions to modify or delete it.

## Why Resource Locks Exist

Accidental deletion or modification of production resources can cause service outages and data loss.

Examples include:

- Accidentally deleting a production Virtual Machine.
- Deleting a Resource Group that contains critical resources.
- Modifying production resources by mistake.

Resource Locks provide an additional layer of protection against these accidental operations.

## Lock Types

Azure provides two lock types.

### CanNotDelete

Resources can be modified.

Resources cannot be deleted.

Typical scenario:

- Prevent accidental deletion of production resources.

### ReadOnly

Resources cannot be modified.

Resources cannot be deleted.

The resource becomes read-only until the lock is removed.

Typical scenario:

- Protect critical production resources from any changes.

## Characteristics

Resource Locks provide:

- Protection against accidental deletion
- Protection against accidental modification
- Support for Subscription, Resource Group, and individual Resource scopes
- Inheritance to child resources when applied at a parent scope

## Typical Use Cases

Resource Locks are commonly used for:

- Production Virtual Machines
- Critical databases
- Resource Groups
- Storage Accounts
- Business-critical Azure resources

## Microsoft Trigger Words

If a question contains words such as:

- accidental deletion
- prevent deletion
- read-only
- lock
- protect resources
- cannot modify

Think:

> Resource Locks

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure feature prevents accidental deletion?
- Which Azure feature makes a resource read-only?
- Which Azure governance feature protects production resources?

## Common Mistakes

❌ Thinking Resource Locks control user permissions.

Azure RBAC controls permissions.

Resource Locks protect resources after permissions have already been granted.

❌ Thinking Resource Locks enforce organizational standards.

Azure Policy enforces standards.

Resource Locks protect existing resources.

## Compare With

| Resource Locks | Azure Policy |
|----------------|--------------|
| Protect existing resources | Controls future deployments |
| Prevent accidental deletion or modification | Enforces governance standards |
| Uses CanNotDelete and ReadOnly locks | Uses policies |

## Exam Tip

Ask:

> "Is the requirement to prevent changes to an existing resource?"

If the goal is to stop accidental deletion:

→ **CanNotDelete**

If the goal is to prevent any modifications:

→ **ReadOnly**

If the question is about enforcing standards or allowed configurations:

→ **Azure Policy**

If the question is about permissions:

→ **Azure RBAC**