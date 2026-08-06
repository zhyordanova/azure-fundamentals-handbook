# Blob Access Tiers

## Definition

Azure Blob Storage provides multiple access tiers that allow organizations to optimize storage costs based on how frequently data is accessed.

Choosing the appropriate access tier helps balance storage costs and data retrieval performance.

Azure currently provides four access tiers:

- Hot
- Cool
- Cold
- Archive

## Why Access Tiers Exist

Not all data is accessed with the same frequency.

For example:

- Images on a company website may be accessed thousands of times every day.
- Monthly reports may only be viewed occasionally.
- Compliance documents may only be accessed once every few years.

Blob Access Tiers allow organizations to reduce storage costs by matching the storage tier to the expected access pattern.

## Hot Tier

The Hot tier is designed for data that is accessed frequently.

Characteristics:

- Highest storage cost
- Lowest access cost
- Fastest read and write performance
- Immediate access

Typical use cases:

- Active application data
- Website content
- Frequently accessed documents
- Images and videos

## Cool Tier

The Cool tier is designed for data that is accessed infrequently but still requires relatively quick access.

Characteristics:

- Lower storage cost than Hot
- Higher access cost than Hot
- Suitable for data accessed occasionally

Typical use cases:

- Short-term backups
- Disaster recovery data
- Archived project files

## Cold Tier

The Cold tier is intended for data that is accessed very rarely but still requires online availability.

Characteristics:

- Lower storage cost than Cool
- Higher retrieval cost
- Suitable for long-term storage
- Data remains online

Typical use cases:

- Long-term backup
- Historical business records
- Rarely accessed documents

## Archive Tier

The Archive tier is designed for data that is rarely accessed.

Characteristics:

- Lowest storage cost
- Highest retrieval cost
- Retrieval may take several hours
- Data is stored offline until rehydrated

Typical use cases:

- Compliance data
- Regulatory archives
- Long-term retention
- Historical backups

## Compare With

| Tier | Storage Cost | Access Speed | Typical Access |
|------|-------------:|-------------|----------------|
| Hot | Highest | Fastest | Frequent |
| Cool | Lower | Fast | Infrequent |
| Cold | Even Lower | Slower | Rare |
| Archive | Lowest | Several hours (rehydration) | Very rare |

## Microsoft Trigger Words

### Hot

- frequently accessed
- fastest
- active data

### Cool

- infrequently accessed
- occasional access

### Cold

- rarely accessed
- long-term online storage

### Archive

- accessed once per year
- long-term retention
- lowest storage cost
- several hours retrieval
- compliance

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Blob Storage tier has the fastest access?
- Which Blob Storage tier has the lowest storage cost?
- Which Blob Storage tier is best for long-term retention?
- Which tier allows retrieval after several hours?

## Common Mistakes

❌ Thinking Archive is simply a cheaper version of Cool.

Archive stores data offline and requires rehydration before it can be accessed.

❌ Thinking the Hot tier is the cheapest.

The Hot tier has the highest storage cost because it is optimized for frequent access.

## Exam Tip

Microsoft almost always uses these phrases:

- highest storage cost
- fastest access

→ **Hot**

- accessed once or twice per year
- retrieval can take several hours
- long-term retention

→ **Archive**

This is one of the easiest Azure Storage questions to answer if you identify the key wording first.