# Multifactor Authentication (MFA)

## Definition

Multifactor Authentication (MFA) is a security feature that requires users to provide two or more forms of verification before accessing an application or service.

Instead of relying only on a password, MFA combines multiple authentication factors to significantly improve account security.

## Why MFA Exists

Passwords alone are vulnerable to:

- Phishing attacks
- Password reuse
- Brute-force attacks
- Credential theft

By requiring an additional authentication factor, MFA greatly reduces the risk of unauthorized access.

## Authentication Factors

Authentication factors are generally grouped into three categories:

### Something you know

Examples:

- Password
- PIN

### Something you have

Examples:

- Microsoft Authenticator app
- Mobile phone
- Hardware security key

### Something you are

Examples:

- Fingerprint
- Facial recognition
- Iris scan

## Typical Use Cases

MFA is commonly used for:

- Microsoft 365
- Azure Portal
- VPN access
- Enterprise applications
- Remote access

## Microsoft Trigger Words

If a question contains words such as:

- second factor
- verification code
- authenticator app
- phone notification
- additional authentication
- two-step verification

Think:

> Multifactor Authentication (MFA)

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure feature requires a second authentication factor?
- Which Azure feature improves sign-in security?
- Which Azure feature uses an authenticator application?

## Common Mistakes

❌ Thinking MFA decides when users can sign in.

MFA provides an additional authentication factor.

Conditional Access decides **when** MFA is required.


❌ Thinking MFA replaces passwords.

MFA supplements passwords by adding additional verification.

## Compare With

| MFA | Conditional Access |
|-----|--------------------|
| Provides additional authentication | Determines when authentication requirements apply |
| Strengthens identity verification | Applies access policies |
| Uses multiple authentication factors | Uses conditions such as location or device |

## Exam Tip

Microsoft usually uses phrases such as:

- second factor
- verification code
- authenticator app
- phone notification

These phrases almost always indicate:

> **Multifactor Authentication (MFA)**

If the question asks **when** MFA should be required, think **Conditional Access**.