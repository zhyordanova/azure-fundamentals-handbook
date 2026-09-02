# Resource Locks

## Definition

Azure Resource Locks protect Azure resources from accidental deletion or modification.

They control **what can happen to a resource**, even when a user otherwise has permission to manage that resource.

## Lock Types

| Lock | Read | Modify | Delete |
|---|:---:|:---:|:---:|
| **CanNotDelete** | ✅ | ✅ | ❌ |
| **ReadOnly** | ✅ | ❌ | ❌ |

```text
Modification must remain possible
but deletion must be prevented
→ CanNotDelete

Modification and deletion
must both be prevented
→ ReadOnly
```

## Scope and Inheritance

Resource Locks can be applied at:

```text
Subscription
Resource Group
Resource
```

A lock applied at a parent scope is inherited by resources below it.

```text
Subscription
    ↓
Resource Group
    ↓
Resource
```

Example:

```text
CanNotDelete on Resource Group
        ↓
Resources in the group
inherit the lock
```

## Resource Locks vs Azure RBAC

Azure RBAC and Resource Locks solve different problems.

| Requirement | Best Fit |
|---|---|
| Control who is authorized to perform actions | **Azure RBAC** |
| Protect a resource from deletion or modification | **Resource Lock** |

A user can have sufficient RBAC permission to delete a resource and still be prevented from deleting it because a Resource Lock is applied.

```text
Permission to delete
+
CanNotDelete lock
        ↓
Deletion blocked
```

## Exam Trap & Reasoning

A scenario may say that resources must be protected from:

> **accidental administrative actions**

Do not choose Azure RBAC simply because the question mentions an **administrator** or **administrative actions**.

Determine what the scenario actually requires:

```text
1. Is the requirement about WHO is authorized?
   → Azure RBAC

2. Is the requirement about protecting the resource itself?
   → Resource Lock

3. If a lock is required, check the Lock Types table.

4. Is the lock applied at a parent scope?
   → Check inheritance
```

The word **administrative** does not determine the answer. The actual requirement does.