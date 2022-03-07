## Agents
Remember that *agents* are represented by records in the database, and every time you refer to an e.g. by registering a collector for the collecting information for a collection object, you are creating a reference to that one record in the database. If you change the data in that agent record, it will be changed for all other data records (collecting information, accessions, loans, etc) referencing it.

**Only edit agents that can be unequivocally identified**

### Situation
Example: you have tardigrades collected “near Qeqertarsuaq, Disko Island, Greenland”, collected “10/06/1983” by “Kristensen”, and you know that the collector was “Reinhardt Møbjerg Kristensen”
### Don’t
 **Do not edit that record**  for “Kristensen”. If you do, you may end up with thousands of collection objects collected by “Reinhardt Møbjerg Kristensen”, including a land snail collected in central Africa in 1763.
### Do
Remove “Kristensen” from the list of collectors. Use the query combobox to see if a record for “Reinhardt Møbjerg Kristensen” is already in the database, and reference that record instead of “Kristensen”. If it doesn’t already exist, create it.
