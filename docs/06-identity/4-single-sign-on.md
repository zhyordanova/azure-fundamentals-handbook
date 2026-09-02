# Single Sign-On (SSO)

## Definition

Single Sign-On (SSO) allows a user to authenticate once and access multiple authorized applications without repeatedly signing in.

## What Problem Does It Solve?

Organizations use many applications. Repeated sign-ins reduce usability and increase password fatigue.

SSO improves the authentication experience by reducing repeated authentication prompts.

## Decision Factors

Ask what the scenario is trying to simplify.

```text
One sign-in for multiple applications
→ SSO

Additional authentication factors
→ MFA

One identity across on-premises and cloud
→ Hybrid Identity
```

## Compare With

| SSO | MFA | Hybrid Identity |
|---|---|---|
| Reduces repeated sign-ins | Strengthens authentication | Integrates identity environments |
| Authentication convenience | Additional verification | On-premises + cloud identity |
| One sign-in, many apps | Multiple factors | Common identity across environments |

## Common Mistakes

SSO does not replace MFA. They can be used together.

SSO also does not mean identity synchronization between on-premises Active Directory and Microsoft Entra ID; that is a hybrid identity scenario.

## Exam Reasoning

```text
ONE SIGN-IN FOR MANY APPS?
→ SSO

STRONGER SIGN-IN?
→ MFA

SAME IDENTITY ON-PREMISES + CLOUD?
→ Hybrid Identity
```
