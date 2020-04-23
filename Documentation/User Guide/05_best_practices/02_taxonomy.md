## Taxonomy

The taxon tree should only contain taxonomic names. Always remember to distinguish between taxa and determinations. The taxon is a formal concept of a group of organisms carrying a name. A determination is a an opinion on what taxon a given collection object represents.

Remember that Linnean nomenclature is sometimes known as binomial nomenclature. As a rule of thumb your full species name should consist of two words, one for the genus, one for the species—unless of cause you have subgenus and subspecies, then it will be three or four. All words are in their own 'containers' in Specify. There should be exactly one word in the genus name, exactly one in the specific epithet (second word of binomial species name). If you have more than one word in any of these columns, it is wrong.

When you enter a new taxon, remember to always verify that the taxonomic rank is correct. If you ad a child taxon to another taxon, Specify will automatically suggest the next rank below the parent taxon's rank. That may not always be the rank you want. For example, if you add a new species to a genus, Specify will set the rank in the dropdown to subgenus, because that is the next available rank below genus in the taxon tree.

Remember that when you add a new taxon through the query combobox in the determination section while registering a new collection object, that new taxon will be a node in the taxon tree, i.e. a taxon, so all of the below described best practices apply.

### Register published taxon names only

Do not add the `n. sp.` or any variations thereof to the epithet. `n. sp.` is a convention to mark a taxon

Don't add not yet described species — we may do this with the best intentions to publish them and update Specify, but manuscripts get rejected, we retire, etc.

    sibiricus nov. sp. (undescribed)
    Pliciloricidae Undescribed
    
Don't add the new species suffix `sp nov` or variations thereof to the epithet

    atlantis nov spec

Establishing a new taxon where the epithet is `sp. nov. (1,2,3)` because you field notes or labels say so is strongly discouraged.
  
### Don't 

Add `sp`,  `spp`; if you have an object determined to genus, just determine it to genus in specify. Do not use the taxon tree for ad hoc sorting of determinations (`sp.1`, `sp.2`).

Add determination qualifiers or determination remarks to the taxon such as

    cfr. pennaki
    mirus (?)
    intermedius?
    larva (cfr. blumi)
    victor cfr.
    (=rupestis; thulin)
    ?=harmsworthi
    ? forskalii
    richteri aff. "robustus"
    (carnia) cf. angulosa
    "sterilis"

All of that information is part of a determination, not the taxonomy. Do not add higher indet taxa just for a determination

    Agglutinated sphere
    Nemertea Order unknown
    Nemertea Family unknown
    Nemertea Genus unknown
    Pliciloricidae Undet. Genus

Add multiple determinations or dubious determinations

    and bryohoerus intermedius
    globosus / africanus
    or meoncholaimus? sp.
    macul? (flavomaculatus?)

    
Add taxonomic status to a name

    spec. dub.
    elegans (taxon inquirendum)
    
Add infraspecific qualifiers (`var`, `forma` etc) to an infraspecific epithet (there is a separate field for that)

    var. spinifer

Add subgenus or subspecific epithet to the specific epithet, even worse, if you abbreviate the specific epithet, making sure nobody but you will be able to decipher what that is.

    (Seuratiella) gracilis
    regina var. regularis
    r. monoicus
    r. occidentalis var. striatus

Add authors to a name (there is a separate field for that)

Add text 'decorations' such as the parentheses around the subgenus name. These are conventions for writing a full name, but not part of a subgenus name.

    (Acarnia)

Edge case/wording: prefer `incertae sedis` over `Not assigned`

Add nonsensical higher taxa to accommodate determination hick-ups


