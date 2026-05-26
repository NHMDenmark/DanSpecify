# Specify Version Testing Document

## Testing Information

| Field | Value |
|---|---|
| Specify Version |  |
| Testing Environment |  |
| Database |  |
| Test Period |  |
| Testers |  |

---

# Severity Levels

| Severity | Meaning |
|---|---|
| Critical | Prevents work or risks data loss |
| High | Major functionality broken |
| Medium | Function partially works or workaround exists |
| Low | Minor issue or cosmetic problem |
| Enhancement | Suggested improvement |

---

# Test Cases

## Data Entry

| ID | Module/Form | Action | Test Description | Expected Result | Result | Issue Description | Severity | Tester | Date | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| DE-001 | Collection Object | New | Add Cataloger, Cataloged Date, Alt Cat Nr, Field Number, Collecting Information (+Dates, Locality (+Geography), Collectors), Determination, Paleo Context, Preparation, Attachment | Record saves successfully and linked records open correctly |  |  |  |  |  |  |
| DE-002 | Collecting Information | New | Add Dates, Locality (+Geography), Collectors | Collecting information saves correctly |  |  |  |  |  |  |
| DE-003 | Locality | New | Add Name, Geography | Locality record saves correctly |  |  |  |  |  |  |
| DE-004 | Taxon | New | Add Name | Taxon record saves correctly |  |  |  |  |  |  |
| DE-005 | Agent | New | Add First, Middle, Last Name, Type, E-mail Address | Agent record saves correctly |  |  |  |  |  |  |
| DE-006 | Geography | New | Create Geography record | Geography record saves correctly |  |  |  |  |  |  |
| DE-007 | Reference Work | New | Create Reference Work record | Reference Work record saves correctly |  |  |  |  |  |  |

---

## Trees – Geography

| ID | Module/Form | Action | Test Description | Expected Result | Result | Issue Description | Severity | Tester | Date | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| TG-001 | Geography | Navigate Tree | Browse hierarchy | Tree navigation works correctly |  |  |  |  |  |  |
| TG-002 | Geography | Search Tree | Search existing node | Correct node returned |  |  |  |  |  |  |
| TG-003 | Geography | Add Child Nodes | Create child node | Child node created successfully |  |  |  |  |  |  |
| TG-004 | Geography | Edit Node | Edit node information | Changes save correctly |  |  |  |  |  |  |
| TG-005 | Geography | Synonymize Nodes | Synonymize nodes | Synonym relationship created correctly |  |  |  |  |  |  |
| TG-006 | Geography | Move Nodes | Move node in hierarchy | Node moved successfully |  |  |  |  |  |  |
| TG-007 | Geography | Merge Nodes | Merge duplicate nodes | Nodes merged correctly |  |  |  |  |  |  |
| TG-008 | Geography | Delete Nodes | Delete node | Node deleted correctly |  |  |  |  |  |  |

---

## Trees – Storage

| ID | Module/Form | Action | Test Description | Expected Result | Result | Issue Description | Severity | Tester | Date | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| TS-001 | Storage | Navigate Tree | Browse hierarchy | Tree navigation works correctly |  |  |  |  |  |  |
| TS-002 | Storage | Search Tree | Search existing node | Correct node returned |  |  |  |  |  |  |
| TS-003 | Storage | Add Child Nodes | Create child node | Child node created successfully |  |  |  |  |  |  |
| TS-004 | Storage | Edit Node | Edit node information | Changes save correctly |  |  |  |  |  |  |
| TS-005 | Storage | Synonymize Nodes | Synonymize nodes | Synonym relationship created correctly |  |  |  |  |  |  |
| TS-006 | Storage | Move Nodes | Move node in hierarchy | Node moved successfully |  |  |  |  |  |  |
| TS-007 | Storage | Merge Nodes | Merge duplicate nodes | Nodes merged correctly |  |  |  |  |  |  |
| TS-008 | Storage | Delete Nodes | Delete node | Node deleted correctly |  |  |  |  |  |  |
| TS-009 | Storage | Move Items | Move collection items between storage locations | Items moved correctly |  |  |  |  |  |  |

---

## Trees – Taxon

| ID | Module/Form | Action | Test Description | Expected Result | Result | Issue Description | Severity | Tester | Date | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| TT-001 | Taxon | Navigate Tree | Browse hierarchy | Tree navigation works correctly |  |  |  |  |  |  |
| TT-002 | Taxon | Search Tree | Search existing node | Correct node returned |  |  |  |  |  |  |
| TT-003 | Taxon | Add Child Nodes | Create child node | Child node created successfully |  |  |  |  |  |  |
| TT-004 | Taxon | Edit Node | Edit node information | Changes save correctly |  |  |  |  |  |  |
| TT-005 | Taxon | Synonymize Nodes | Synonymize nodes | Synonym relationship created correctly |  |  |  |  |  |  |
| TT-006 | Taxon | Move Nodes | Move node in hierarchy | Node moved successfully |  |  |  |  |  |  |
| TT-007 | Taxon | Merge Nodes | Merge duplicate nodes | Nodes merged correctly |  |  |  |  |  |  |
| TT-008 | Taxon | Delete Nodes | Delete node | Node deleted correctly |  |  |  |  |  |  |

---

## Trees – Chronostratigraphy

| ID | Module/Form | Action | Test Description | Expected Result | Result | Issue Description | Severity | Tester | Date | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| TC-001 | Chronostratigraphy | Navigate Tree | Browse hierarchy | Tree navigation works correctly |  |  |  |  |  |  |
| TC-002 | Chronostratigraphy | Search Tree | Search existing node | Correct node returned |  |  |  |  |  |  |
| TC-003 | Chronostratigraphy | Add Child Nodes | Create child node | Child node created successfully |  |  |  |  |  |  |
| TC-004 | Chronostratigraphy | Edit Node | Edit node information | Changes save correctly |  |  |  |  |  |  |
| TC-005 | Chronostratigraphy | Synonymize Nodes | Synonymize nodes | Synonym relationship created correctly |  |  |  |  |  |  |
| TC-006 | Chronostratigraphy | Move Nodes | Move node in hierarchy | Node moved successfully |  |  |  |  |  |  |
| TC-007 | Chronostratigraphy | Merge Nodes | Merge duplicate nodes | Nodes merged correctly |  |  |  |  |  |  |
| TC-008 | Chronostratigraphy | Delete Nodes | Delete node | Node deleted correctly |  |  |  |  |  |  |

---

## Trees – Lithostratigraphy

| ID | Module/Form | Action | Test Description | Expected Result | Result | Issue Description | Severity | Tester | Date | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| TL-001 | Lithostratigraphy | Navigate Tree | Browse hierarchy | Tree navigation works correctly |  |  |  |  |  |  |
| TL-002 | Lithostratigraphy | Search Tree | Search existing node | Correct node returned |  |  |  |  |  |  |
| TL-003 | Lithostratigraphy | Add Child Nodes | Create child node | Child node created successfully |  |  |  |  |  |  |
| TL-004 | Lithostratigraphy | Edit Node | Edit node information | Changes save correctly |  |  |  |  |  |  |
| TL-005 | Lithostratigraphy | Synonymize Nodes | Synonymize nodes | Synonym relationship created correctly |  |  |  |  |  |  |
| TL-006 | Lithostratigraphy | Move Nodes | Move node in hierarchy | Node moved successfully |  |  |  |  |  |  |
| TL-007 | Lithostratigraphy | Merge Nodes | Merge duplicate nodes | Nodes merged correctly |  |  |  |  |  |  |
| TL-008 | Lithostratigraphy | Delete Nodes | Delete node | Node deleted correctly |  |  |  |  |  |  |

---

## Trees – Tectonic Unit

| ID | Module/Form | Action | Test Description | Expected Result | Result | Issue Description | Severity | Tester | Date | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| TU-001 | Tectonic Unit | Navigate Tree | Browse hierarchy | Tree navigation works correctly |  |  |  |  |  |  |
| TU-002 | Tectonic Unit | Search Tree | Search existing node | Correct node returned |  |  |  |  |  |  |
| TU-003 | Tectonic Unit | Add Child Nodes | Create child node | Child node created successfully |  |  |  |  |  |  |
| TU-004 | Tectonic Unit | Edit Node | Edit node information | Changes save correctly |  |  |  |  |  |  |
| TU-005 | Tectonic Unit | Synonymize Nodes | Synonymize nodes | Synonym relationship created correctly |  |  |  |  |  |  |
| TU-006 | Tectonic Unit | Move Nodes | Move node in hierarchy | Node moved successfully |  |  |  |  |  |  |
| TU-007 | Tectonic Unit | Merge Nodes | Merge duplicate nodes | Nodes merged correctly |  |  |  |  |  |  |
| TU-008 | Tectonic Unit | Delete Nodes | Delete node | Node deleted correctly |  |  |  |  |  |  |

---

## Interactions

| ID | Module/Form | Action | Test Description | Expected Result | Result | Issue Description | Severity | Tester | Date | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| IN-001 | Accession | New | Create accession record | Accession saves correctly |  |  |  |  |  |  |
| IN-002 | Accession | Add Record Sets | Add record set to accession | Record set linked successfully |  |  |  |  |  |  |
| IN-003 | Loan | New | Create loan record | Loan saves correctly |  |  |  |  |  |  |
| IN-004 | Return Loan Records | New | Return loaned records | Records returned successfully |  |  |  |  |  |  |

---

## Queries

| ID | Module/Form | Action | Test Description | Expected Result | Result | Issue Description | Severity | Tester | Date | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| QU-001 | Collection Object | New | Query alt cat number, catalog number, cataloged date, field number, collecting info (aggregated), determinations (aggregated), preparations (aggregated), paleo context (aggregated) | Query returns correct records |  |  |  |  |  |  |
| QU-002 | Collection Object | Create Recordset | Save query result as record set | Record set created correctly |  |  |  |  |  |  |
| QU-003 | Collection Object | Browse in Forms | Open queried records in forms | Records open correctly |  |  |  |  |  |  |
| QU-004 | Collection Object | Create CSV | Export query result as CSV | CSV generated correctly |  |  |  |  |  |  |
| QU-005 | Accession | New | Run accession query | Query returns correct records |  |  |  |  |  |  |
| QU-006 | Loan | New | Run loan query | Query returns correct records |  |  |  |  |  |  |
| QU-007 | Taxon | New | Run taxon query | Query returns correct records |  |  |  |  |  |  |
| QU-008 | Agent | New | Run agent query | Query returns correct records |  |  |  |  |  |  |
| QU-009 | Agent | Merge | Merge duplicate agents | Agents merged correctly |  |  |  |  |  |  |
| QU-010 | Locality | New | Run locality query | Query returns correct records |  |  |  |  |  |  |
| QU-011 | Locality | Merge | Merge duplicate localities | Localities merged correctly |  |  |  |  |  |  |

---

## Reports

| ID | Module/Form | Action | Test Description | Expected Result | Result | Issue Description | Severity | Tester | Date | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| RE-001 | Standard Loan Form SP7 | Run Report | Generate loan report | Report generated correctly |  |  |  |  |  |  |
| RE-002 | Label | Run Report | Generate labels | Labels generated correctly |  |  |  |  |  |  |

---

## Record Sets

| ID | Module/Form | Action | Test Description | Expected Result | Result | Issue Description | Severity | Tester | Date | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| RS-001 | Record Set | New | Create record set | Record set created successfully |  |  |  |  |  |  |
| RS-002 | Record Set | Merge | Merge record sets | Record sets merged successfully |  |  |  |  |  |  |

---

## WorkBench

| ID | Module/Form | Action | Test Description | Expected Result | Result | Issue Description | Severity | Tester | Date | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| WB-001 | Import File | Map & Validate | Validate import mapping | Validation completes successfully |  |  |  |  |  |  |
| WB-002 | Import File | Upload | Upload import file | Upload completes successfully |  |  |  |  |  |  |
| WB-003 | Import File | Roll Back | Roll back import | Import rollback works correctly |  |  |  |  |  |  |
| WB-004 | Import Attachments | Test Functionality | Import attachments | Attachments imported correctly |  |  |  |  |  |  |

---

## Attachments

| ID | Module/Form | Action | Test Description | Expected Result | Result | Issue Description | Severity | Tester | Date | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| AT-001 | All / Collection Object / Accession | Download/Open in New Tab | Open and download attachments | Attachments open/download correctly |  |  |  |  |  |  |
| AT-002 | Collection Object | Edit Metadata | Modify attachment metadata | Metadata updates correctly |  |  |  |  |  |  |
| AT-003 | Collection Object | Import | Import attachments | Attachments imported successfully |  |  |  |  |  |  |

---

## Statistics

| ID | Module/Form | Action | Test Description | Expected Result | Result | Issue Description | Severity | Tester | Date | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| ST-001 | Shared | View/Download as TSV | Export statistics as TSV | TSV generated correctly |  |  |  |  |  |  |

---

## Batch Edit

| ID | Module/Form | Action | Test Description | Expected Result | Result | Issue Description | Severity | Tester | Date | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| BE-001 | Batch Edit | Edit Multiple Records | Update multiple records simultaneously | Batch edit completes correctly |  |  |  |  |  |  |

---

## Search

| ID | Module/Form | Action | Test Description | Expected Result | Result | Issue Description | Severity | Tester | Date | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| SE-001 | Search | General Search | Search records globally | Correct records returned |  |  |  |  |  |  |

---

## Edit Individual Records

| ID | Module/Form | Action | Test Description | Expected Result | Result | Issue Description | Severity | Tester | Date | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| ER-001 | Collection Object | Update Records | Edit existing record fields | Changes save correctly |  |  |  |  |  |  |

---

## Carry Forward

| ID | Module/Form | Action | Test Description | Expected Result | Result | Issue Description | Severity | Tester | Date | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| CF-001 | Collection Object | New | Create record using Carry Forward | New record inherits expected values |  |  |  |  |  |  |

---

## Clone

| ID | Module/Form | Action | Test Description | Expected Result | Result | Issue Description | Severity | Tester | Date | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| CL-001 | Collection Object | New | Clone existing record | Cloned record created correctly |  |  |  |  |  |  |

---

# Testing Summary

| Tester | Functional Area | Passed | Failed | Critical Issues | Notes |
|---|---|---|---|---|---|
|  |  |  |  |  |  |
