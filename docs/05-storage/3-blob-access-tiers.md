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

The Hot tier is an online tier optimized for data that is accessed or modified frequently.

Characteristics:

- Higher storage cost than cooler tiers
- Lower access costs
- Online access
- Suitable for frequently accessed data

Typical use cases:

- Active application data
- Website content
- Frequently accessed documents
- Images and videos

## Cool Tier

The Cool tier is an online tier optimized for data that is accessed or modified infrequently.

Characteristics:

- Lower storage cost than Hot
- Higher access cost than Hot
- Online access
- Recommended minimum storage duration: 30 days

Typical use cases:

- Short-term backups
- Disaster recovery data
- Archived project files

## Cold Tier

The Cold tier is an online tier optimized for data that is rarely accessed or modified but still requires immediate online availability.

Characteristics:

- Lower storage cost than Cool
- Higher access cost than Cool
- Online access
- Recommended minimum storage duration: 90 days

Typical use cases:

- Long-term backup
- Historical business records
- Rarely accessed documents

## Archive Tier

The Archive tier is an offline tier optimized for data that is rarely accessed and can tolerate retrieval latency measured in hours.

Characteristics:

- Lowest storage cost
- Highest retrieval cost
- Data cannot be read directly while archived
- Data must be rehydrated to an online tier before it can be accessed
- Recommended minimum storage duration: 180 days

Typical use cases:

- Compliance data
- Regulatory archives
- Long-term retention
- Historical backups

## Compare With

| Tier | Availability | Storage Cost | Access Cost | Recommended Minimum Duration |
|------|--------------|--------------|-------------|------------------------------|
| Hot | Online | Highest | Lowest | No minimum |
| Cool | Online | Lower | Higher | 30 days |
| Cold | Online | Lower than Cool | Higher than Cool | 90 days |
| Archive | Offline | Lowest | Highest | 180 days |

## Microsoft Trigger Words

### Hot

- frequently accessed
- active data
- frequent reads and writes

### Cool

- infrequently accessed
- online
- approximately 30 days or longer

### Cold

- rarely accessed
- online
- approximately 90 days or longer

### Archive

- offline
- long-term retention
- rehydration
- retrieval can take hours
- approximately 180 days or longer

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

Ask two questions:

> "How often is the data accessed?"

and

> "Must it remain immediately available online?"

Frequently accessed:

→ **Hot**

Infrequently accessed but still online:

→ **Cool**

Rarely accessed but still online:

→ **Cold**

Rarely accessed and retrieval can wait for hours:

→ **Archive**

The key distinction is:

> **Hot / Cool / Cold = online**  
> **Archive = offline**