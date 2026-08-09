# Single Sign-On (SSO)

## Definition

Single Sign-On (SSO) is an authentication feature that allows users to sign in once and access multiple applications without signing in again.

After successful authentication, users can access authorized applications without repeatedly entering their credentials.

## Why Single Sign-On Exists

Organizations often use many different applications.

Without SSO, users may need to authenticate separately to each application.

Single Sign-On reduces repeated authentication prompts and allows users to access multiple assigned applications after signing in.

Single Sign-On improves:

- User experience
- Productivity
- Security
- Password management

## Characteristics

Single Sign-On provides:

- One authentication process
- Access to multiple applications
- Reduced password fatigue
- Improved user experience

SSO simplifies authentication but does not replace authorization or Multifactor Authentication.

## Typical Use Cases

Single Sign-On is commonly used for:

- Microsoft 365
- Azure Portal
- Salesforce
- ServiceNow
- Enterprise applications

## Microsoft Trigger Words

If a question contains words such as:

- sign in once
- one login
- multiple applications
- seamless authentication
- single authentication

Think:

> Single Sign-On (SSO)

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure feature allows users to sign in once?
- Which Azure feature reduces password fatigue?
- Which Azure feature provides access to multiple applications after one authentication?

## Common Mistakes

❌ Thinking SSO synchronizes identities between on-premises and Azure.

Hybrid Identity synchronizes identities.

SSO provides seamless authentication across applications.

❌ Thinking SSO replaces MFA.

SSO simplifies authentication.

MFA strengthens authentication.

The two technologies are often used together.

## Compare With

| Single Sign-On | Hybrid Identity |
|----------------|-----------------|
| One authentication for multiple applications | One identity across on-premises and cloud |
| Improves user experience | Synchronizes identities |
| Authentication convenience | Identity integration |

## Exam Tip

Ask:

> "Is the requirement about one sign-in or one identity?"

One sign-in for multiple applications:

→ **Single Sign-On (SSO)**

One identity across on-premises and cloud environments:

→ **Hybrid Identity**

Remember:

> **SSO = authentication experience**  
> **Hybrid Identity = identity integration**