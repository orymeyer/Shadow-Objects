# Shadow-Objects
Implementation of Shadow Objects in Salesforce.

This is a proof-of-concept of how  to implement a shadow Object in Salesforce. Shadow Objects (not an official or formally used term) is used to replicate records from a master object. 

We use the Case object as the master object in this example. Any Case records which are created or updated will be replicated to the SCase__c (Shadow) object. The fields which are replicated are:
- Case Number
- Case Subject
- Date Case Created

#### Scope for improvement: 
- Use custom metadata-types to store mappings for sObjects.
- Handle master-to-shadow record deletion replication.
- More Abstraction in implementation.
