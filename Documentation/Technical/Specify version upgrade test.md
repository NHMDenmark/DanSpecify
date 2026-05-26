## Testing Information

|  |  |
|---|---|
| Previous Specify 7 version |  |
| Current Specify 7 version |  |
| Previous database version |  |
| Current database version |  |
| Previous DB schema version |  |
| Current DB schema version |  |
| Database Name |  |

---

## Severity Levels

| Severity | Meaning |
|---|---|
| Critical | Prevents work or risks data loss |
| High | Major functionality broken |
| Medium | Function partially works or workaround exists |
| Low | Minor issue or cosmetic problem |

---

# Test Cases
## Data Entry

| ID    | Module/Form            | Action | Test Description                                                                                                                 | Expected Result                              | Result | Issue Description | Severity | Tester | Notes |
| ----- | ---------------------- | ------ | -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------- | ------ | ----------------- | -------- | ------ | ----- |
| DE-01 | Collection Object      | New    | Add cataloger, cataloged date, alt cat nr, field number, collecting info, determinations, paleo context, preparation, attachment | Record saves correctly and linked data opens |        |                   |          |        |       |
| DE-02 | Collecting Information | New    | Add dates, locality, collectors                                                                                                  | Collecting information saves correctly       |        |                   |          |        |       |
| DE-03 | Locality               | New    | Create locality with name and geography                                                                                          | Locality saves correctly                     |        |                   |          |        |       |
| DE-04 | Taxon                  | New    | Create taxon with name                                                                                                           | Taxon saves correctly                        |        |                   |          |        |       |
| DE-05 | Agent                  | New    | Create agent with name, type, email                                                                                              | Agent saves correctly                        |        |                   |          |        |       |
| DE-06 | Geography              | New    | Create geography record                                                                                                          | Geography saves correctly                    |        |                   |          |        |       |
| DE-07 | Reference Work         | New    | Create reference work record                                                                                                     | Reference saves correctly                    |        |                   |          |        |       |

## Trees - Geography

  | ID    | Action           | Test Description  | Expected Result                  | Result | Issue Description | Severity | Tester | Notes |
| ----- | ---------------- | ----------------- | -------------------------------- | ------ | ----------------- | -------- | ------ | ----- |
| TG-01 | Navigate Tree    | Browse hierarchy  | Tree loads and expands correctly |        |                   |          |        |       |
| TG-02 | Search Tree      | Search node       | Correct node returned            |        |                   |          |        |       |
| TG-03 | Add Child Nodes  | Create child node | Node created successfully        |        |                   |          |        |       |
| TG-04 | Edit Node        | Modify node       | Changes saved correctly          |        |                   |          |        |       |
| TG-05 | Synonymize Nodes | Create synonym    | Synonym relationship created     |        |                   |          |        |       |
| TG-06 | Move Nodes       | Move node in tree | Node moved correctly             |        |                   |          |        |       |
| TG-07 | Merge Nodes      | Merge duplicates  | Nodes merged correctly           |        |                   |          |        |       |
| TG-08 | Delete Nodes     | Delete node       | Node removed correctly           |        |                   |          |        |       |


