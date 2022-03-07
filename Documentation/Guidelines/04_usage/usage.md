# Usage

## Installation instructions (Specify 6 only)
Download and run the application installer for your operating system from the Specify [homepage](http://specifyx.specifysoftware.org/download/). Once the installation is finished, start Specify.

In the login-window that appears, first click the disclosure triangle that says *More Information* under the password field.

Check the *Remember Username* box.

In the field *Database* enter `NHMD` (all capital letters).

In the field *Server* enter `specify-db.science.domain`.

Leave the fields for *DBMS* and *Port* unchanged and click on the *Configure Master Key…* button (with a red key icon). A new window titled *Master Username/Password* will open.

Leave the choice for *Master Source* as is (`Encryption key stored in local preferences`) and enter the master key you received from your *Database Manager* in the field *Encrypted Username/Password*. Click the *OK* button.

You are now back to the login-window. Click the *More Information* disclosure triangle again, to hide the detailed login information. You can now log in with the user name and password you received from your *Database Manager*.

## Login
Login with Specify 7 [here](http://a00630.science.ku.dk/accounts/login/?next=/specify/). Enter the user name and password you received from your *Database Manager* and click the *Login* link.

To login with Specify 6, open the application and enter the user name and password you received from your *Database Manager* in the login-window. Click the *Login* button.

## First Set-up

### Preferences (Specify 6 only)

### Finding your agent record
You may want to fill in some information, such as your address, etc (used for loans)
create an empty Collection object record
edit the cataloger
close the *tab* (do not save the record)

## User Interface
### Task Bar
### Side Bar
### Query Combo boxes


## Registration of an object
Before you start, read the section: “Where the data is”
no difference between lots, specimens, and types
mark types as such in the Determinations section
The catalog number is assigned first when you click the *Save* button.

## Queries and Record Sets
Queries can be accessed in the taskbar clicking on the *Query* icon.
The sidebar will show a selection of *Query Creators*. These are the starting and endpoints of your query. A collection object query will return *Collection Object* records, while a taxon query will return *Taxon* records. It is important to pick the appropriate query creator for a query. If want to search for all collection objects determined to a certain taxon, start with a *Collection Object* query creator, not the *Taxon* query creator, as the latter will only return the taxon names, but not the collection objects determined to it.
You can configure the query creators by right clicking somewhere in an empty space in the left hand sidebar and choosing `Configure Query Creators` from the contextual menu that appears.
“More Tables”

## Loans

Loans without preparations are loans of specimens, samples or suchwise that have not yet been entered into Specimens as registered Collections Objects. It is basically a blank loan form with a free text field.
The category should be used extremely sparingly for loans, but includes the following:
-          Bulk samples, unprocessed field samples or similar collections not (yet) entered into Specify (i.e. “Two bulk samples of Danish beetles” or “Five crates of unregistered theropod dinosaur material”)
-          Specimens which will never be registered into the collections, such as specimens w/o scientific value or any information attached, which are available for loans to art exhibitions, the school service or for outreach purposes (I.e. “One stuffed red fox (Vulpes vulpes), provenience unknown” or “A collection of common Danish seashells, origins unknown”)



It is the *preparations* of a collection object that are its physical representation and it is the. *preparations* that are sent on loan. The *Preparation Type* of a loan has an attribute *Is Loanable*, and only preparation of a type that are loanable can be sent on loan. There also needs to be a count. If a preparation has a count higher than `1`, than parts of that preparation can be sent on loan.
Example: if you have a jar of five shrimps preserved in EtOH, that jar would be your preparation, and you can send `3` out of `5` on loan. You can even send the remaining two on a different loan before the other three are returned. The *CMS* will keep track of how many items of any given preparation are currently available for new loans.
Loans can be created in the *Interactions* tab from a record set or by manually entering the catalog numbers.
To start registering a loan, click on *Interactions* in the *task bar*.
### Creating a loan
Make sure the collection objects you want to send on loan have loanable preparations (see above).
#### Creating a loan from a record set
Drag and drop the record set in the sidebar on the *Loan* icon.
#### Creating a loan by manually entering catalog numbers
Click on the *Loan* icon in the sidebar.
A window will appear in which you can enter catalog numbers for the objects you want to send on loan. You can add a list of catalog numbers, comma separated.
### Selecting preparations
A window will appear in which you can select the amount of material of any loanable preparation you want to send on loan. You can adjust the count for each preparation individually, or you can choose all at once by clicking *Select All*.
Once you have selected all items to be sent on loan, click *OK*
### Registering Loan Information
The loan record displayed in the form that appears holds the information of the loan throughout its entire lifecycle (which ends when the last items of the loan have been returned) and a number of fields are not relevant to the initial registration of the loan. For the initial registration, you need only to consider the following fields. The *Is Closed* check-box and *Date Closed* field will be automatically checked or filled respectively once you return the loan (see below).
The *Loan Number* (required) will be automatically assigned, once you are finished with registration and click *Save* in the lower right corner of the form.
The *Loan Date* (required) is auto filled to the current date (‘today’), but you can edit it if needed.
The *Current Due Date* is auto-filled based on the loan period setting in your *Preferences*, but can be edited if needed.
#### Loan Agents
*Loan Agents* are the people or oragnizations involved in the loan. Each has a *Role* in the loan, the following three of them are **required**:
- *Principal Investigator*: the legal entity (person, department, or institution) to whom the loan is issued and in whose custody the material is formally and legally during the loan period; A Principal Investigator (PI) is a recognized academic or public research institution or a person permanently employed at one. This could be a person who is the supervisor of the student or junior researcher, who will actually be studying the specimen. Make sure this agent borrower has an address (it will be used to generate the loan invoice).
- *Authoriser*: the staff who authorises a loan; usually the responsible curator or the head of collections.
- *Preparer*: the staff handling the preparation of the loan (physical preparation for shipment, registration, etc.). Make sure this agent borrower has an address (it will be used to generate the loan invoice).
Additional agent roles that are not required:
-  *Researcher*: The person who is going to study the material during the loan period, but is only a student, emeritus associate researcher, short-term associate of the institution, where the PI is employed. This can be the person who is practically borrowing the loan, but is not formally employed by the institution of their Principal Investigator.
-  *Receiver*: the person who first handled the material upon arrival at the loaning entity.
#### Additional loan information
You can specify the *Purpose Of Loan* and detail any *Special Conditions* for the loan, i.e. conditions that apply to this loan only and are not covered by the general terms and conditions for loans at NHMD. Make sure that the special conditions do not contradict the general terms and conditions, or if they do, get clearance from the head of collections and state so explicitly.
If the loan entails financial responsibility, mark the checkbox *Is Financial Responsibility*.
#### Loan Preparations
The *Loan Preparations* section is an itemised list of the material sent out on loan.
To edit details for an item, double click on its row in the list or switch to form view and navigate to the item. Add a descriptive *Description* for each item (e.g. `clutch of 4 eggs`). That description will be printed in the itemised list in the loan invoice. The descriptions are used in place of the *Preparation Type*, and should be more descriptive than that. If no description is given, the preparation type will be printed in the invoice instead. Be aware that this can be confusing: if you for example register egg clutches as preparation type `Egg` and count `1` and don’t update the description in the loan preparation to state that it is a clutch of a given number of eggs, your invoice will list `1 Egg`.
You can also add any *Out Comments* regarding the item, so you can state e.g. if an item already has damages at the time of preparation.
*In Comments* are any comments on that item you enter after it has been returned by the borrower. E.g. if parts have been removed for destructive sampling.
*Received Comments* are any information on the condition of the item that the borrower informs you about upon receipt of the loan (e.g. if an item got damaged during transport). You will receive these comments in writing from the borrower, and it is your responsibility to fill them in here.
#### Printing an invoice
With all of the above information entered, check the *Generate Invoice on Save* check-box and click *Save*. From the dialog of available reports that appears, select Overdue Notification An invoice will be generated that you can save as PDF or print directly. You can also use a query to find the loan (e.g. by the loan number that will be assigned when you click *Save*) and in the query results window select the loan record, click the report icon in the top right corner of the query results, and select *Standard Loan Invoice*.
#### Shipments
One loan can consist of one or more shipments. Once the loan is underway, you should register the shipment information.
Required fields are the *Shipment Number* , which is the tracking number of the carrier, and *Shipped To* and *Shipped By*, both of which are agents. Shipped To will usually be the borrower, or the borrowing institution. Shipped By will usually be the loan preparer or authoriser or the responsible person in the package central. You can set a default agent for *Shipped By* in the *Loans* tab of the Specify preferences.
Add the *Shipment Date* and *Method* (the carrier) and any remarks to the shipment. You can set a default *Method* in the *Loans* tab of the Specify preferences.
### Registering acknowledged receipt of a loan
Once the borrower has acknowledged receipt of a loan by sending the signed loan invoice, find the loan by loan number using a query or quick find.
Select the loan in the query results and open it (you can also double click on the loan in the query results, which will open it). Click *Edit* in the lower right corner of the form.
Enter the *Date Received* and any general *Received Comments* on the loan. In the *Loan Preparations* section, add specific *Received Comments* if any.
Attach a PDF of the signed loan invoice under *Attachments*.
### Due loans and extensions
There is currently no functionality to send automated overdue notifications. The best way to handle open loans is to generate a query with the parameters *Is Closed* = `No`, the Loan Agent and Loan Agent Role = `Borrower`, and the *Current Due Date*. A preconfigured query should be in every collection. In the query, add todays date in the *Current Due Date* and the `>` (greater than) operator.
From the query results, open an overdue loan by double clicking it. Add the *Overdue Not Send Date*, check *Generate Invoice on Save* and from the dialog of available reports, select Overdue Notification. Save that report as PDF and send it by email (we should have an email template for that), attach a copy of the notification to the loan record.
#### Granting an extension
If an extension of the loan is granted, find the loan using a query, open it, and click *Edit*.
Enter the *Current Due Date* into the *Original Due Date*. Now enter new due date in *Current Due Date* and check the *Extension Granted* check-box.
Check the *Generate Invoice on Save* check-box and from the dialog of available reports, select Loan Extension. Send the extension form and upon receipt of the signed copy, attach it to the loan record.
### Returning a loan
When all or part of a loan returns, find the loan record in question using a query (it will be easiest to scan the loan number barcode with a barcode scanner), open and edit it.
When returning loans, Specify will ask you to resolve how many of each preparations have been *returned* and how many have been *resolved*. Returned should not require further explanation. *Resolved* means that the status of the preparation has been agreed upon by the *borrower* and the *authoriser*. This could mean that e.g. one out of 5 preparations will not get returned because it was used for destructive sampling. In that case, you would mark the number of returned preparation as `4`, the number of resolved preparations as `5`. All preparations must be resolved, but not all have to be returned. A loan can first be closed when the last preparation has been resolved.
Click the button *Return Loan*. A window will appear asking you to resolve the  preparations. If parts have been returned previously (see below), those already returned will be marked as such and no longer be editable.
Enter the name of the staff who received the returned preparation (*Received By)*; likely that will be you). Enter the *Returned Date* and the *Quantity Returned* and *Quantity Resolved* for the preparations. When you click *Save*, the window will close, and you will return to the loan form where the *Is Closed* check-box should now be checked if all preparations have been resolved. Enter the *Date Closed* and click *Save*.

#### Partial returns
You can return parts of a loan in the *Loan Preparations* list. If the list is in *table view*, double click the row for the material you want to return. In the window with the detail form on that material, click the *Return Preparation* button (If the list is in *form view* you can click the button directly). A window will appear where you can *resolve* the status of that preparation (for some reason you first have to click the *+* button on the lower right). Enter the name of the staff who received the returned preparation (*Received By)*). Enter the *Returned Date* and the *Quantity Returned* and *Quantity Resolved* for the preparations and any remarks.


- who to contact
- other resources
- attachments: also to what tables attach what docs
- photo policy for registered specimens; always upload to the server
- geography: always register as Degrees, Minutes, Decimal Seconds (important for printing)