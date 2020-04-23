# Where the data is

## Data

### Institution
The *CMS* stores collection and associated data in an organisational hierarchy representing an institution. That hierarchy consists of *Divisions*, *Disciplines*, and *Collections*. Certain types of data are restricted (‘scoped’) to certain organisational levels. Information that is shared across the entire institution is *Storage* and *Reference Works*.

#### Divisions
A *Division* is the highest organisational level within an *Institution*. *Agent* records are shared across a division. This is important to remember if your division manages several collections; if you edit information for one record, the changes will have effect in all occurrences[^1]. A *Division* will have one or many *Disciplines*.

#### Disciplines
A *Discipline* is an organisational level whose sole purpose is to manage certain types of information between collections within a *Division*. Disciplines are of a *Type*, the names of which are predefined and fairly self-explanatory, such as `Ornithology`, `Entomology`. Information shared within a discipline are the *Taxonomy*, the *Geography*, *Localities*, and *Collecting Events*.
A *Discipline* has one or many *Collections*

#### Collections
The *Collection* is the level at which a user of the *CMS* works. You can only work in one collection at a time. *Collection Objects* and their *Preparations* belong to a collection and can be accessed from within that collection only.

### Collection Objects
*Collection Objects* are at the center of data in the *CMS*. They hold basic information on the record, or cataloged item, such as the catalog number (required, automatically assigned by the CMS), general remarks, or whether or not the record is confidential or ready for publication. A *Collection Objects* does not necessarily correspond to the item on the shelf in your collection, which is represented by the *Preparation*[^2]. Collection Objects are not to be confused with *Accessions*.

### Containers
Containers are only used within a few collections. A *Container* is a means of grouping collection objects. An example is a herbarium sheet containing multiple mounted specimens, or a piece of rock containing multiple fossils. In contrast to *Storage* items, containers are more tightly coupled with the objects they contain; e.g. For the fossil example, separating the contained objects would require preparing the rock specimen. The container can itself be another registered collection object with its own catalog number.
Required information is the *Container Name*.

### Preparations
Preparations correspond to the object on the shelf in your collection. One *Collection Object *can have one or more preparations. An example is a bird as a collection object that has two preparations: a skin, and the skeleton. The preparations of a collections object can be stored in different locations, and sent on loan individually. Required information for a *Preparation* are the *Preparation Type* and the *Count* (number of items). Preparations can be lots, e.g. 42 shrimps in ethanol (where the *Preparation Type* is `Lot (EtOH)` and *Count* is `42`).

### Storage
A *Storage* item is a movable or immobile unit in which *preparations* of *collection objects* can be stored, such as a `building`, a `room`, a `cabinet`, a `shelf` or `drawer`, or a `box`.
Storage is organized in a hierarchy, where one `building` can contain many `rooms`, one `room` many `cabinets`, and so on.
Required information is the *Name*, the *Parent*, and the *Rank*.

### Determinations
A *Collection Object* has zero, one, or many *Determinations*. The determination represents an opinion on what *Taxon* a collection object represents. Important information is the *Taxon*, the *Determiner* (an *Agent*), and the *Determined Date* and whether the collection object is a type for that taxon (*Type Status*)[^3].
If an object is determined to genus, the *Taxon* is that genus, and **not** an indeterminate Species of that Genus.
Only one determination can be the *current* determination. This is important: you cannot have a lot with two species and register both species. You either have to break up the lot and register it individually, or you have to determine the lot to the next higher taxon both species belong to (e.g. the genus if both species are of the same genus).

### Taxon
A *Taxon* represents a taxonomic concept as established by an authority. Required Information are the *Parent* and the *Name*. In the case of a species, the parent will be the genus or subgenus, and the name will be the epithet only[^4]. Important information is the *Author*, which is the authorship as given in a citation, including the year, and the *Preferred Taxon* (the valid name) if the taxon is a synonym.

### Agents
An *Agent* is either a `Person`, `Organization`, `Group`, or `Other`, determined by the *Agent Type*. A `Group` will have members, which are other agents. A `Person` or Organization will have one or several *Addresses*. Every user of the *CMS* will have an agent that is the users’ representation[^5].
Required information is the *Last Name* in the case of a `Person`, or the *Name* in the case of an `Organization`, a `Group`, or `Other`.
Important information is at least one address, if the agent is to be used in the context of a loan.

### Collecting Information
The *Collecting Information* (or *Station*) holds information of where, when, and by whom, and how the *Collection Object* was collected. Depending on your collection, the collecting information will be treated as
1. a set information items associated with and unique to your collection object
2. a discrete collecting event or station from which many collection objects can be derived
Important information is the *Locality*, the *Collecting Method*, the *Collecting Date* (can appear as *Start Date* and *End Date*), and the *Collectors*. If your collection treats collecting information as a discrete collecting event, the *Station or Field Number* by which you identify the collecting event will be required information. 

### Locality
A *Locality* is the exact place where collection objects were collected. Required information is the *Locality Name*. Important information is *Latitude* and *Longitude*, *Depth* and *Elevation* (either can be given as an interval with minimum and maximum values). Wherever possible, a locality should be assigned to a *Geography*. The *Named Place* is an officially named place in a geographic unit (e.g. `Brønshøj` is an officially named place in `Københavns Kommune`). The *Relation to Named Place* can be used to describe if the Locality is e.g. `in` a named place or `1.5 km N of` a named place. *Water Body*, *Island*, or *Island Group* are also important items of information to describe a Locality.

### Geography
The *Geography* is a hierarchical subdivision of the earth that provides a geographic reference scheme for a collection. The standard geography follows the DarwinCore subdivision into continents, countries, states, and counties[^6], but your collection may use a custom geography. Any item in the geography can have zero, one, or many *Localities*. The locality is more specific than the geography it belongs to (e.g. the Locality `Lawn at west wing of the Botanical Museum` would be a locality in  `Københavns Kommune`).

## Interactions

### Accessions
An *Accession* is a transaction; a legal procedure, where material gets formally integrated into the collection. With that procedure, custody of the material is formally transferred to the curator of the collection. In most cases, ownership of the material is formally transferred to the museum, unless the accession falls under a *Repository Agreement*.
Required information for an accession is the *Accession Number*, which is auto generated by the system. Important information is the *Type*, the *Repository Agreement* (if any), *Accession Authorizations* (*Permits*),  the *Date Accessioned*, and the people or legal entities involved in the accession (*Accession Agents*).

### Permits
A *Permit* is a legal document issued by an authority, such as e.g. the government of a country, that documents the provenience of the material that enters the collection with an *Accession*. Required Information is the *Permit Number*, which is generated for you. Important information is *Issued By*, *Issued To*, and the *Original Designation*, which is the identifier given by the issuing authority.

### Repository Agreements
A *Repository Agreement* is a legal contract between the museum and another party that governs terms of custody and rights of use of material that is deposited in the museum, but where ownership resides with the other party (e.g. Greenlandic material).
Required Information is the *RA Number* (Repository Agreement Number) which is generated for you, and the *Originator*, which is the party that co-signed the agreement.

### Loans
*Loans* are registered when *Preparations* of accessioned collection objects temporarily leave the collection for purpose of study or display. There is no difference between a loan to another department in the museum (e.g. exhibitions) or an external researcher.
Required fields are the *Loan Number*, which is generated for you, and the Loan Date.
Loans involve several legal entities, *Loan Agents*.
*Special Conditions* are conditions holds information about the handling and studying of specimens – such as permissions for destructive sampling or scientific preparation on specific Collection Objects or Preparations in the loan, which are not covered by the general terms and conditions.
Important information is the *Due Date* and the *Loan Preparations*, an itemized list over the material that is sent on loan.
A loan can have one or many *Shipments*.

#### Loan Agents
*Loan Agents* are the legal entities (commonly people) involved in a loan. Each can have one of several roles, which are explained in the section :Loans.

#### Shipments
A *Shipment* is the transport of the material form the museum to the loaning entity and can be either `By Hand` through museum staff or the loaner, or through a carrier.
Required information *Shipment Number* which is the carrier’s number, *Shipped By*, and *Shipped To*.

### Reference Works
*Reference Works* are scientific papers that can occur as citations in various places of the CMS, e.g. in the context of a taxon, a collection object, a determination of a specimen, a locality, or a collecting event. Add the citation in the appropriate place (e.g. do not add a citation to a collection object if the paper describes a locality where the object was collected but does not mention the specific object).
Required information is the title. Important information are *Authors*, *Work Date*, *Journal*, *DOI*.

### Attachments
Attachments can be associated with several items of information (entities). In order to find attachments and to reduce redundancy, they should be associated with the appropriate entity. Do not attach everything to the *Collection Object*.
Required information is, whether or not the attachment is *public*.
#### Collection Object Attachments
Only attachments that represent the *Collection Object* itself should be attached here. In most cases, only photographs of the collection object will be attachments that should go here. Do not attach published papers or collecting permits; those should always be attached to *Reference Work* and *Permit* records respectively.
#### Accession Attachments
Attachments relevant to an *Accession* that are not *permits* should be filed here; these are typically donation, exchange, or purchase related documents.
#### Field Notebook Attachments
Scans of field books, journals, etc. should be filed under *field notebook attachments*.
#### Loan Attachments
Any attachments directly relevant to a loan of material are to be filed as *loan attachments*. Signed loan forms returned by the loaner should be routinely filed with a loan.
#### Permit Attachments
Any *permits* related documents, such as the original permits (e.g. collecting permits, export and import permits) are filed under *permit attachments*.
#### Preparation Attachments
Documents relevant to a preparation, such as technical reports or images from a preparation process should be filed as *preparation attachments*.
#### Reference Work Attachments
Scientific publications and reports or theses should be filed under *reference work attachments*.


[^1]:	`A. Hansen` who wrote a paper on birds in 1983 may not be the same `Alfred Hansen` who collected rodents in 1957.
[^2]:	A collection object without a preparation is essentially an observation.
[^3]:	There is no explicit ‘Basionym’; this is implicit by the type determination. The taxon names and their synonymy are not handled in the determination but in the taxonomy.
[^4]:	The full species name is autogenerated as the Full Name
[^5]:	If the user has access to collections in several divisions, he or she will have one agent in every division.
[^6]:	The default uses the Danish regions as State and the municipalities as County.