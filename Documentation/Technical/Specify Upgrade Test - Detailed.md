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
| High | Functionality broken |
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

## Trees - Storage

| ID    | Action           | Test Description         | Expected Result       | Result | Issue Description | Severity | Tester | Notes |
| ----- | ---------------- | ------------------------ | --------------------- | ------ | ----------------- | -------- | ------ | ----- |
| TS-01 | Navigate Tree    | Browse storage hierarchy | Tree loads correctly  |        |                   |          |        |       |
| TS-02 | Search Tree      | Search storage node      | Correct node found    |        |                   |          |        |       |
| TS-03 | Add Child Nodes  | Create storage location  | Node created          |        |                   |          |        |       |
| TS-04 | Edit Node        | Modify storage node      | Changes saved         |        |                   |          |        |       |
| TS-05 | Synonymize Nodes | Create synonym           | Synonym created       |        |                   |          |        |       |
| TS-06 | Move Nodes       | Move node                | Node moved            |        |                   |          |        |       |
| TS-07 | Merge Nodes      | Merge nodes              | Nodes merged          |        |                   |          |        |       |
| TS-08 | Delete Nodes     | Delete node              | Node deleted          |        |                   |          |        |       |
| TS-09 | Move Items       | Move collection objects  | Items moved correctly |        |                   |          |        |       |


## Trees - Taxon

| ID    | Action           | Test Description       | Expected Result      | Result | Issue Description | Severity | Tester | Notes |
| ----- | ---------------- | ---------------------- | -------------------- | ------ | ----------------- | -------- | ------ | ----- |
| TT-01 | Navigate Tree    | Browse taxon hierarchy | Tree loads correctly |        |                   |          |        |       |
| TT-02 | Search Tree      | Search taxon node      | Correct node found   |        |                   |          |        |       |
| TT-03 | Add Child Nodes  | Create taxon node      | Node created         |        |                   |          |        |       |
| TT-04 | Edit Node        | Modify taxon node      | Changes saved        |        |                   |          |        |       |
| TT-05 | Synonymize Nodes | Create synonym         | Synonym created      |        |                   |          |        |       |
| TT-06 | Move Nodes       | Move node              | Node moved           |        |                   |          |        |       |
| TT-07 | Merge Nodes      | Merge nodes            | Nodes merged         |        |                   |          |        |       |
| TT-08 | Delete Nodes     | Delete node            | Node deleted         |        |                   |          |        |       |


## Trees – Chronostratigraphy

| ID    | Action           | Test Description | Expected Result      | Result | Issue Description | Severity | Tester | Notes |
| ----- | ---------------- | ---------------- | -------------------- | ------ | ----------------- | -------- | ------ | ----- |
| TC-01 | Navigate Tree    | Browse hierarchy | Tree loads correctly |        |                   |          |        |       |
| TC-02 | Search Tree      | Search node      | Correct node found   |        |                   |          |        |       |
| TC-03 | Add Child Nodes  | Create node      | Node created         |        |                   |          |        |       |
| TC-04 | Edit Node        | Modify node      | Changes saved        |        |                   |          |        |       |
| TC-05 | Synonymize Nodes | Create synonym   | Synonym created      |        |                   |          |        |       |
| TC-06 | Move Nodes       | Move node        | Node moved           |        |                   |          |        |       |
| TC-07 | Merge Nodes      | Merge nodes      | Nodes merged         |        |                   |          |        |       |
| TC-08 | Delete Nodes     | Delete node      | Node deleted         |        |                   |          |        |       |


## Trees – Lithostratigraphy

| ID    | Action           | Test Description | Expected Result      | Result | Issue Description | Severity | Tester | Notes |
| ----- | ---------------- | ---------------- | -------------------- | ------ | ----------------- | -------- | ------ | ----- |
| TL-01 | Navigate Tree    | Browse hierarchy | Tree loads correctly |        |                   |          |        |       |
| TL-02 | Search Tree      | Search node      | Correct node found   |        |                   |          |        |       |
| TL-03 | Add Child Nodes  | Create node      | Node created         |        |                   |          |        |       |
| TL-04 | Edit Node        | Modify node      | Changes saved        |        |                   |          |        |       |
| TL-05 | Synonymize Nodes | Create synonym   | Synonym created      |        |                   |          |        |       |
| TL-06 | Move Nodes       | Move node        | Node moved           |        |                   |          |        |       |
| TL-07 | Merge Nodes      | Merge nodes      | Nodes merged         |        |                   |          |        |       |
| TL-08 | Delete Nodes     | Delete node      | Node deleted         |        |                   |          |        |       |


## Trees – Tectonic Unit

| ID    | Action           | Test Description | Expected Result      | Result | Issue Description | Severity | Tester | Notes |
| ----- | ---------------- | ---------------- | -------------------- | ------ | ----------------- | -------- | ------ | ----- |
| TU-01 | Navigate Tree    | Browse hierarchy | Tree loads correctly |        |                   |          |        |       |
| TU-02 | Search Tree      | Search node      | Correct node found   |        |                   |          |        |       |
| TU-03 | Add Child Nodes  | Create node      | Node created         |        |                   |          |        |       |
| TU-04 | Edit Node        | Modify node      | Changes saved        |        |                   |          |        |       |
| TU-05 | Synonymize Nodes | Create synonym   | Synonym created      |        |                   |          |        |       |
| TU-06 | Move Nodes       | Move node        | Node moved           |        |                   |          |        |       |
| TU-07 | Merge Nodes      | Merge nodes      | Nodes merged         |        |                   |          |        |       |
| TU-08 | Delete Nodes     | Delete node      | Node deleted         |        |                   |          |        |       |


## Interactions

| ID    | Module/Form         | Action          | Test Description            | Expected Result                | Result | Issue Description | Severity | Tester | Notes |
| ----- | ------------------- | --------------- | --------------------------- | ------------------------------ | ------ | ----------------- | -------- | ------ | ----- |
| IN-01 | Accession           | New             | Create accession record     | Accession saves correctly      |        |                   |          |        |       |
| IN-02 | Accession           | Add Record Sets | Add record set to accession | Record set linked successfully |        |                   |          |        |       |
| IN-03 | Loan                | New             | Create loan record          | Loan saves correctly           |        |                   |          |        |       |
| IN-04 | Return Loan Records | New             | Return loaned records       | Records returned successfully  |        |                   |          |        |       |


## Queries

| ID    | Module/Form       | Action           | Test Description                                                                                                                                                                     | Expected Result               | Result | Issue Description | Severity | Tester | Notes |
| ----- | ----------------- | ---------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ----------------------------- | ------ | ----------------- | -------- | ------ | ----- |
| QU-01 | Collection Object | New              | Query alt cat number, catalog number, cataloged date, field number, collecting info (aggregated), determinations (aggregated), preparations (aggregated), paleo context (aggregated) | Query returns correct records |        |                   |          |        |       |
| QU-02 | Collection Object | Create Recordset | Save query result as record set                                                                                                                                                      | Record set created correctly  |        |                   |          |        |       |
| QU-03 | Collection Object | Browse in Forms  | Open queried records in forms                                                                                                                                                        | Records open correctly        |        |                   |          |        |       |
| QU-04 | Collection Object | Create CSV       | Export query result as CSV                                                                                                                                                           | CSV generated correctly       |        |                   |          |        |       |
| QU-05 | Accession         | New              | Run accession query                                                                                                                                                                  | Query returns correct records |        |                   |          |        |       |
| QU-06 | Loan              | New              | Run loan query                                                                                                                                                                       | Query returns correct records |        |                   |          |        |       |
| QU-07 | Taxon             | New              | Run taxon query                                                                                                                                                                      | Query returns correct records |        |                   |          |        |       |
| QU-08 | Agent             | New              | Run agent query                                                                                                                                                                      | Query returns correct records |        |                   |          |        |       |
| QU-09 | Agent             | Merge            | Merge duplicate agents                                                                                                                                                               | Agents merged correctly       |        |                   |          |        |       |
| QU-10 | Locality          | New              | Run locality query                                                                                                                                                                   | Query returns correct records |        |                   |          |        |       |
| QU-11 | Locality          | Merge            | Merge duplicate localities                                                                                                                                                           | Localities merged correctly   |        |                   |          |        |       |


## Reports

| ID    | Module/Form            | Action     | Test Description     | Expected Result            | Result | Issue Description | Severity | Tester | Notes |
| ----- | ---------------------- | ---------- | -------------------- | -------------------------- | ------ | ----------------- | -------- | ------ | ----- |
| RE-01 | Standard Loan Form SP7 | Run Report | Generate loan report | Report generated correctly |        |                   |          |        |       |
| RE-02 | Label                  | Run Report | Generate labels      | Labels generated correctly |        |                   |          |        |       |


## Record Sets

| ID    | Module/Form | Action | Test Description  | Expected Result                 | Result | Issue Description | Severity | Tester | Notes |
| ----- | ----------- | ------ | ----------------- | ------------------------------- | ------ | ----------------- | -------- | ------ | ----- |
| RS-01 | Record Set  | New    | Create record set | Record set created successfully |        |                   |          |        |       |
| RS-02 | Record Set  | Merge  | Merge record sets | Record sets merged successfully |        |                   |          |        |       |


## WorkBench

| ID    | Module/Form        | Action             | Test Description        | Expected Result                   | Result | Issue Description | Severity | Tester | Notes |
| ----- | ------------------ | ------------------ | ----------------------- | --------------------------------- | ------ | ----------------- | -------- | ------ | ----- |
| WB-01 | Import File        | Map & Validate     | Validate import mapping | Validation completes successfully |        |                   |          |        |       |
| WB-02 | Import File        | Upload             | Upload import file      | Upload completes successfully     |        |                   |          |        |       |
| WB-03 | Import File        | Roll Back          | Roll back import        | Import rollback works correctly   |        |                   |          |        |       |
| WB-04 | Import Attachments | Test Functionality | Import attachments      | Attachments imported correctly    |        |                   |          |        |       |


## Attachments

| ID    | Module/Form                         | Action                   | Test Description              | Expected Result                     | Result | Issue Description | Severity | Tester | Notes |
| ----- | ----------------------------------- | ------------------------ | ----------------------------- | ----------------------------------- | ------ | ----------------- | -------- | ------ | ----- |
| AT-01 | All / Collection Object / Accession | Download/Open in New Tab | Open and download attachments | Attachments open/download correctly |        |                   |          |        |       |
| AT-02 | Collection Object                   | Edit Metadata            | Modify attachment metadata    | Metadata updates correctly          |        |                   |          |        |       |
| AT-03 | Collection Object                   | Import                   | Import attachments            | Attachments imported successfully   |        |                   |          |        |       |


## Statistics

| ID    | Module/Form | Action               | Test Description         | Expected Result         | Result | Issue Description | Severity | Tester | Notes |
| ----- | ----------- | -------------------- | ------------------------ | ----------------------- | ------ | ----------------- | -------- | ------ | ----- |
| ST-01 | Shared      | View/Download as TSV | Export statistics as TSV | TSV generated correctly |        |                   |          |        |       |


## Batch Edit

| ID    | Module/Form | Action                | Test Description                       | Expected Result                | Result | Issue Description | Severity | Tester | Notes |
| ----- | ----------- | --------------------- | -------------------------------------- | ------------------------------ | ------ | ----------------- | -------- | ------ | ----- |
| BE-01 | Batch Edit  | Edit Multiple Records | Update multiple records simultaneously | Batch edit completes correctly |        |                   |          |        |       |


## Search

| ID    | Module/Form | Action         | Test Description        | Expected Result          | Result | Issue Description | Severity | Tester | Notes |
| ----- | ----------- | -------------- | ----------------------- | ------------------------ | ------ | ----------------- | -------- | ------ | ----- |
| SE-01 | Search      | General Search | Search records globally | Correct records returned |        |                   |          |        |       |


## Edit Individual Records

  | ID    | Module/Form       | Action         | Test Description            | Expected Result        | Result | Issue Description | Severity | Tester | Notes |
| ----- | ----------------- | -------------- | --------------------------- | ---------------------- | ------ | ----------------- | -------- | ------ | ----- |
| ER-01 | Collection Object | Update Records | Edit existing record fields | Changes save correctly |        |                   |          |        |       |


# Carry Forward

| ID    | Module/Form       | Action | Test Description                  | Expected Result                     | Result | Issue Description | Severity | Tester | Notes |
| ----- | ----------------- | ------ | --------------------------------- | ----------------------------------- | ------ | ----------------- | -------- | ------ | ----- |
| CF-01 | Collection Object | New    | Create record using Carry Forward | New record inherits expected values |        |                   |          |        |       |


# Clone

| ID    | Module/Form       | Action | Test Description      | Expected Result                 | Result | Issue Description | Severity | Tester | Notes |
| ----- | ----------------- | ------ | --------------------- | ------------------------------- | ------ | ----------------- | -------- | ------ | ----- |
| CL-01 | Collection Object | New    | Clone existing record | Cloned record created correctly |        |                   |          |        |       |



