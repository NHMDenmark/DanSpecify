# Locality fields  best practice

Currently, there is quite a bit of confusion over which information belongs in the locality fields in the Entomology collection and how to enter it correctly. The Specify Group believes that we need to create a best practice policy for naming localities and strongly adhere to said policy. We have a couple of suggestions we would like to discuss with the Entomology group so that we can figure out what works and what doesnt.

For those of you who are new to Specify, here is a little background information: Specify is a relational database and consists of a large number of tables. When you register a new item you will add new information to some of those tables, but most of the time, you will also be re-using data that has already been entered into a semi-controlled vocabulary, e.g. taxon and geography information. This both saves time and reduces redundancy (no need to type in data that is already there) and ensures that typos and ambiguities are kept to an absolute minimum.

- Always have in mind that the data you are entering in searchable fields should ease findability and help your future self (or someone else) when they are trying to find the exact object that you are cataloging. Specifys search engine will only find what you ask it to find, which might not be what you think youre asking.

- Always take a moment to consider if you are entering data in the appropriate fields. We have discovered that e.g. Locality fields are sometimes used for data about collectors, habitats, dates etc. Locality fields should **only** contain locality information.

## Locality

The following fields should be filled out if possible

- Locality Name
- Geography
- Latitude and Longitude (preferably, but the information may not be available)

If used consistently, Geography can be a very powerful tool to isolate Collection Objects from a certain area (County level in USA, municipality level in DK and so forth)

In addition to the fields listed above, Specify offers a number of other locality fields, but unfortunately, we do not use these consistently.

- Lat/Long Method (as a picklist)
- Named Place and Relation To Named Place
- Elevation
- Locality Details (Faunal District, Island, National Park Name etc.)
- Locality Remarks

## Using the designated fields
Based on what has been done in the past (not always the best solution), and what can be done, we would like to discuss four different scenarios for best practice so that we can introduce more data consistency.

### Option 1  simple ###

**Locality Name**: [name of location], [nearest populated place or land mark]

Enter the name of the actual location and the nearest populated place as shown in example #1.

Then enter the Region, municipality, city or similar in the **Geography** field (you can see the structure of Geography in Trees -> View Tree). Do not use add but choose from the list that will appear once you start typing.

Consider if you need to add an additional named place in the **Named Place** field in case there is any ambiguity.

Do not enter info such as North of, 3 km south of.. in the **Locality Name** field. If you cant choose a precise locality name, then consider zooming out and maybe add a description in **Locality Remarks**. Lat./Long. info might make this description redundant.

	Example #1  Name of location, Name of nearest town

This solution is simple, but may not be optimal when it comes to efficient retrieval.

Below is an example (#2) that could cause problems: Gyldensteen Strand is misspelled, and according to current official maps, inddmmede is not part of the name. There is also a typo in Bogense. If someone entered the search terms Gyldensteen Strand or Bogense in a query, they would not retrieve this record.

	Example #2  Name of location, Name of nearest town

### Option 2  adding extra fields **Named Place**, **Relation to Named Place** and **National Park** ###

Extra fields will increase precision of the search.

Always use the **Named Place** field for information about the nearest populated place, area or landmark. Data entered in the **Locality Name** field should only be the name of the locality where the object(s) was (were) collected. This could be a mountain, a road, a forest, but if you cant determine a location, consider zooming out. Additional description can be entered in the **Relation to Named Place** field, e.g. 20 km South of [Named Place].

In example #3 below, the name of the actual location has been entered in the **Named Place** field, whereas the city of Dunedin has been entered in the **Locality Name**.


	Example #3  Named Place and Relation to Named Place

**Alternative suggestion**:

	**Locality Name**: Leith Saddle Track

	**Geography**: Dunedin City, Otago, New Zealand, Oceania [from Geography Tree]

	**Named Place**: Dunedin

	**Relation to Named Place**: 8 km north of Dunedin

	Example #4 (older format)  Named Place and National Park fields

In this example, the name of the national park has been entered into the **Named Place** field. There is a specific field for national parks (**National Park Name**, see newer format in example #3) which would be a better option. We also suggest not using the **Minor Area** field in the future. This field is not clearly defined (What is a minor area in the first place?)

**Alternative suggestion**

	**Locality Name**: OReillys Guest House

	**Geography**: Scenic Rim, Queensland, Australia, Oceania [from Geography Tree]

	**National Park Name**: Lamington National Park

	**Named Place**: Brisbane (or better: OReilly)

	Example #5 (older format)  Habitat info in Locality Name

This example is almost identical to #4 in that information in **Named Place** and **Minor Area** should be moved to different fields.

**Alternative suggestion**

	**Locality Name:** Mount Moffatt

	**Geography**: Maranoa, Queensland, Australia, Oceania [from Geography Tree]

	**National Park Name**: Carnarvon National Park

This is also an example where habitat information has found its way into a **Locality** field. Unless there is an actual location named Water Hole, Water hole should be considered habitat information and moved to **Locality and Habitat Notes** (Collecting Information).

### Option 3  adding even more specific fields ###

As option 2, but includes more fields, such as

	An islands name should be entered in the **Island** field.

	A group of islands in the **Island Group** field.

	Lakes, rivers, sounds etc. should be entered in the **Water Body** field

	Example #6  an example where the Island field is used

### Option 4  everything in the Locality Name field ###

Use only **Locality Name** and **Geography** fields  this includes km info etc. in the **Locality Name** field. This solution requires more typing (less reuse of information already entered) and increases the risk of typos and inconsistencies. There is a considerable risk of messy data, some redundancy, and difficulties retrieving relevant records (too much noise). #7 and #8 are examples of inconsistent use of the **Locality Name** field.

	Example #7  What is most important?

	Example #8  Information overload in the **Locality Name** field?

Wordings such as 3 km west of will rarely need to be searchable  this information might make more sense in a different field as additional information. In any case, some kind of syntax would be needed for efficient data entry and retrieval, with most important information listed first:

**Locality Name**: [locality name], [nearest populated place], [additional info]

It is still important to fill out the **Geography** field as detailed as possible  in example #8 above there is one additional level (District) below Region.

	Example #9  Two fields for everything

**Alternative suggestion**

	**Locality Name**: Nystrup Klitplantage, Vang, 3 km West of

	**Geography**: Thisted Kommune, Region Nordjylland, Denmark, Europe [from Geography Tree]

## Abbreviations, units and punctuation ##

Finally, we need to agree on abbreviations. Do we spell out North, South, and Southeast etc. What about Rd, St, Mt? Do we add punctuation after units? Do we add space before units? All of these can be found in example #7. What makes the most sense in a query? What would someone use as a search term? What makes sense on a label? What makes sense in a description?

## Other Questions ##

Can you think of any kind of information you would put in the **Locality remarks** field? (NOT habitat remarks)
(e.g. Historical information?)

Are there any strange locality fields that you are unfamiliar with, never use or just unsure what to do with?

