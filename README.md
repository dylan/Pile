Pile
====

A simple way to convert your MTGO DEK files to other popular formats.

##Formats supported:

###In:

**DEK** (MTGO Default export option)
```XML
<?xml version="1.0" encoding="utf-8"?>
<Deck xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <NetDeckID>0</NetDeckID>
  <PreconstructedDeckID>0</PreconstructedDeckID>
  <Cards CatID="17923" Quantity="2" Sideboard="false" Name="Aphetto Dredging" />
  <Cards CatID="49159" Quantity="4" Sideboard="false" Name="Doom Blade" />
  <Cards CatID="35284" Quantity="4" Sideboard="false" Name="Frenzy Sliver" />
  <Cards CatID="38612" Quantity="2" Sideboard="false" Name="Terror" />
  <Cards CatID="43393" Quantity="4" Sideboard="false" Name="Undying Evil" />
  <Cards CatID="39736" Quantity="4" Sideboard="false" Name="Geth's Verdict" />
  <Cards CatID="20367" Quantity="3" Sideboard="false" Name="Echoing Decay" />
  <Cards CatID="49579" Quantity="4" Sideboard="false" Name="Predatory Sliver" />
  <Cards CatID="9527" Quantity="4" Sideboard="false" Name="Muscle Sliver" />
  <Cards CatID="35286" Quantity="4" Sideboard="false" Name="Virulent Sliver" />
  <Cards CatID="45466" Quantity="7" Sideboard="false" Name="Swamp" />
  <Cards CatID="45456" Quantity="4" Sideboard="false" Name="Swamp" />
  <Cards CatID="45442" Quantity="5" Sideboard="false" Name="Forest" />
  <Cards CatID="49060" Quantity="3" Sideboard="false" Name="Terramorphic Expanse" />
  <Cards CatID="9475" Quantity="4" Sideboard="false" Name="Lotus Petal" />
  <Cards CatID="12585" Quantity="2" Sideboard="false" Name="Unearth" />
  <Cards CatID="45460" Quantity="2" Sideboard="true" Name="Naturalize" />
  <Cards CatID="37889" Quantity="2" Sideboard="true" Name="Pyroblast" />
  <Cards CatID="28041" Quantity="2" Sideboard="true" Name="Hydroblast" />
  <Cards CatID="27955" Quantity="2" Sideboard="true" Name="Dust to Dust" />
  <Cards CatID="45464" Quantity="2" Sideboard="true" Name="Plains" />
  <Cards CatID="20367" Quantity="1" Sideboard="true" Name="Echoing Decay" />
  <Cards CatID="45480" Quantity="1" Sideboard="true" Name="Island" />
  <Cards CatID="45450" Quantity="1" Sideboard="true" Name="Mountain" />
  <Cards CatID="38612" Quantity="2" Sideboard="true" Name="Terror" />
</Deck>
```

###Out:

**DEC** (Decked Builder)
```
2 Aphetto Dredging
4 Doom Blade
4 Frenzy Sliver
2 Terror
4 Undying Evil
4 Geth's Verdict
3 Echoing Decay
4 Predatory Sliver
4 Muscle Sliver
4 Virulent Sliver
7 Swamp
4 Swamp
5 Forest
3 Terramorphic Expanse
4 Lotus Petal
2 Unearth
SB: 2 Naturalize
SB: 2 Pyroblast
SB: 2 Hydroblast
SB: 2 Dust to Dust
SB: 2 Plains
SB: 1 Echoing Decay
SB: 1 Island
SB: 1 Mountain
SB: 2 Terror
```
**TXT** (Deckstats.net)
```
2 Aphetto Dredging
4 Doom Blade
4 Frenzy Sliver
2 Terror
4 Undying Evil
4 Geth's Verdict
3 Echoing Decay
4 Predatory Sliver
4 Muscle Sliver
4 Virulent Sliver
7 Swamp
4 Swamp
5 Forest
3 Terramorphic Expanse
4 Lotus Petal
2 Unearth

//Sideboard
2 Naturalize
2 Pyroblast
2 Hydroblast
2 Dust to Dust
2 Plains
1 Echoing Decay
1 Island
1 Mountain
2 Terror
```
**TXT** (BBCode formatted for forums.mtgsalvation.com)
```
[DECK= BG Slivers]
2 Aphetto Dredging
4 Doom Blade
4 Frenzy Sliver
2 Terror
4 Undying Evil
4 Geth's Verdict
3 Echoing Decay
4 Predatory Sliver
4 Muscle Sliver
4 Virulent Sliver
7 Swamp
4 Swamp
5 Forest
3 Terramorphic Expanse
4 Lotus Petal
2 Unearth

Sideboard
2 Naturalize
2 Pyroblast
2 Hydroblast
2 Dust to Dust
2 Plains
1 Echoing Decay
1 Island
1 Mountain
2 Terror
[/DECK]
```
