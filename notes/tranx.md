# what is transaction
a transaction is a logical unit of database processing that includes one or more operations (like reading, writing, updating) on the database. the term transaction refers to a collection of operations that form a single logical unit of work.

## transaction must see a consistent database state
every transaction should start with a consistent stare of the datavase and leave it in a consistent state after it finishes

- consistency constraints (like foreign key,domain constraints) must never be violated
- if a transaction is applied to a consistent database, and the transaction logic is correct, it will result in new consistent state

ensures *logical correctness* of operations.

## Durability after commit

once a transaction is committed, all its changes to the database are permanent.
- even if there is power failure, system crash, or any other failure, the changes made by the transaction will be saved in the database.
- achived using logs and recovery techniques(like write-ahead logging, ARIES protocol, etc.)
- this garantees that commited data will not be lost.


    