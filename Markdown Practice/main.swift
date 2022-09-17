//
//  main.swift
//  Markdown Practice
//
//  Created by Paul Malone on 9/16/22.
//

import Foundation

var testString = """
# Header1

Paragraph with *bold*

1. List1
2. List2
3. List3

## Header2

> Quote
> Quoteline 2

Code
Code2
Code3

"""

var testString2 = """
# Red Death Primer

## Packages

### Opposition Agent Lock-out

- 4x Dark Ritual
- 4x Opposition Agent
- 2x Ashiok, Dream Render
- 3x Wasteland

To me, this is the core of the deck. The absolute best thing you can do with this deck is resolve an Opposition Agent in response to your opponent cracking their first fetch. Agent can be relevant at any point in the game, but coming out in response to your opponents' first fetch often obliterates their opening lines of play (and their morale).

Let's go through each card and the role it plays in order...

#### Dark Ritual
Ritual has an important role in this deck. Liliana, Opposition Agent, Dauthi Voidwalker, and Ashiok could all end up on the board turn 1 thanks to Dark Ritual. Hidetsugu can come out a turn early on 2. Your early Rituals can help to cast your Anglers later on thanks to the delve mechanic.

As always, you have to take into consideration the lost card advantage when using Dark Ritual to speed out your hands. Having the Liliana you cast off Ritual get countered by Force of Will is annoying, but at least maintains CA parity. Having it countered by  Daze or Flusterstorm can be ruinous. If you think you might have to play around Daze with your Rituals, do it. Especially if they know what you're on because they WILL Daze your Opposition Agent off Ritual.

#### Opposition Agent
This is one of the best cards in the deck period, and certainly one of the best to cast of Ritual.

### Disruption

- 3x Lightning Bolt. For Disruption and pushing extra damage through. Bolt fills an important niche that mono-black decks typically turn to lesser cards for: spot removal. I don't feel like I'm saying anything controversial by claiming that Lightning Bolt is a better card than Fatal Push. Having spot removal is important because our edict effects can't always get the job done on their own.
- 4x Sudden Edict. I came to this decklist as a Pox player. One of the things that eventually drove me away from Pox was the realization that Sudden Edict is just a better card than Smallpox. You don't have to eschew creatures to run it, it doesn't strand you on one land, it doesn't force you to discard a card you know you'll need later. On top of what Sudden Edict doesn't do, it does a lot of other things that Smallpox cannot. It's instant speed and it has Split Second. There's no way to activate something to create a creature token in response and there is no way to counter it. This card is insane. Always run 4.
- 4x Thoughtseize
- 4x Hymn to Tourach

### Two-way Players
#### Dauthi Voidwalker
Dauthi Voidwalker is a cheap consistent clock, overbearing disruption and a potential game winning bomb all on one card. The more I play with this card, the more I love it. Obviously having 3 power and Shadow for BB makes him a great unblockable threat. His passive and activated abilities really add a huge dimension to him though. I'll stop short of saying his passive shuts down your opponent's graveyard because it doesn't unless he comes out turn 1. His passive only stops new cards from reaching the graveyard, it doesn't exile what was already there, so even if you get him out turn 2, the turn 1 Entombed Griselbrand your opponent set up is still coming out next turn.

The part of his ability that lets you play a card exiled with a void counter seems like a gimmick at first, but actually comes up a lot and makes Dauthi Voidwalker even more explosive than the unassuming 3/2 he starts out as. It requires you to tap and sacrifice him, so you can't activate it the turn you cast DV, and you can't keep him around after you do it, so you really have to weigh the opportunity cost of losing your 3/2 shadow that hates your opponent's graveyard vs. whatever you'll be playing off of him. You also can't attack and use his ability in the same turn, so make sure you don't attack when it's better to just hold him up and crack him on their end step. You can also basically flash in blockers with him if you do do that.

Sequencing comes up a lot with DV. If you have a LotV out and draw DV on your turn, casting DV *before* you +1 Liliana means you can potentially cast the spell your opponent discards later. Planning on playing out Thoughtseize and DV in the same turn? Consider playing DV out ahead of the Thoughtseize, unless resolving DV is the only way you can win and you suspect they're holding counter magic. Your Liliana's -2, Bolt/Edicts, Ashiok's -1, Hidetsugu's ETB, creatures dying in combat, Hymn to Tourach and your opponent CRACKING FETCHES ALL feed Dauthi Voidwalker new cards. The Pool of void cards is also shared by all of your Voidwalkers, so even if one of them gets removed you may be able to utilize the void pool later.

Obviously there are some weaknesses here. Dauthi Voidwalker can't really block anything except for other Dauthi Voidwalkers, but you can get around that by turning him into one of your opponent's creatures that can block.

#### Hidetsugu Consumes All // Vessel of the All Consuming

### Pure Threat

- 2x Gurmag Angler

### Card Advantage

- 4x Liliana of the Veil
- 2x Castle Locthwain

### Lands

- 7x Swamp
- 3x Badlands
- 4x Bloodstained Mire
- 4x Polluted Delta
"""

let testString3 = """
### Two-way Players
#### Dauthi Voidwalker
Dauthi Voidwalker is a cheap consistent clock, overbearing disruption and a potential game winning bomb all on one card. The more I play with this card, the more I love it. Obviously having 3 power and Shadow for BB makes him a great unblockable threat. His passive and activated abilities really add a huge dimension to him though. I'll stop short of saying his passive shuts down your opponent's graveyard because it doesn't unless he comes out turn 1. His passive only stops new cards from reaching the graveyard, it doesn't exile what was already there, so even if you get him out turn 2, the turn 1 Entombed Griselbrand your opponent set up is still coming out next turn.

The part of his ability that lets you play a card exiled with a void counter seems like a gimmick at first, but actually comes up a lot and makes Dauthi Voidwalker even more explosive than the unassuming 3/2 he starts out as. It requires you to tap and sacrifice him, so you can't activate it the turn you cast DV, and you can't keep him around after you do it, so you really have to weigh the opportunity cost of losing your 3/2 shadow that hates your opponent's graveyard vs. whatever you'll be playing off of him. You also can't attack and use his ability in the same turn, so make sure you don't attack when it's better to just hold him up and crack him on their end step. You can also basically flash in blockers with him if you do do that.

Sequencing comes up a lot with DV. If you have a LotV out and draw DV on your turn, casting DV *before* you +1 Liliana means you can potentially cast the spell your opponent discards later. Planning on playing out Thoughtseize and DV in the same turn? Consider playing DV out ahead of the Thoughtseize, unless resolving DV is the only way you can win and you suspect they're holding counter magic. Your Liliana's -2, Bolt/Edicts, Ashiok's -1, Hidetsugu's ETB, creatures dying in combat, Hymn to Tourach and your opponent CRACKING FETCHES ALL feed Dauthi Voidwalker new cards. The Pool of void cards is also shared by all of your Voidwalkers, so even if one of them gets removed you may be able to utilize the void pool later.
"""

let md = Document.init(markdownString: testString3)
var i = 0
for block in md.blocks {
    print("===== Block\(i) =====")
    print("\(block.blockString)\n")
    i += 1
}

let b = md.blocks[0]

var j = 0
for f in b.fragments {
    print("===== Fragment\(j) =====")
    print("\(f.fragmentString)\n")
    j += 1
}

//print(testString)

// Pointers
//var ptr = 0



//func getBlocks(str: String) -> [String] {
//    // Map of characters in the string
//    let charBuffer = str.map(String.init)
//
////    for c in charBuffer {
//////        print("\(String(describing: charBuffer.firstIndex(of: c))):  \(c)")
////        print("\(c)")
////    }
//
//    // String var to hold blocks
//    var blocks = [String]()
//
//    // Temp string to store individual blocks as they're built
//    var tempBlock = ""
//
//    if charBuffer.count > 2 {    // If the string is too small we won't even bother
//        while ptr <= charBuffer.count - 1 {
//            // Add the current char to a new string
//
//            if ptr == charBuffer.count - 1 {
//                tempBlock.append(charBuffer[ptr])
//                blocks.append(tempBlock)
//                break
//            } else if charBuffer[ptr] == "\n" && charBuffer[ptr + 1] == "\n" {
//                blocks.append(tempBlock)
//                tempBlock = "" // Reset tempblock for next block
//                ptr += 2
//            } else {
//                tempBlock.append(charBuffer[ptr])
//                ptr += 1
//            }
//        }
//    }
//    return blocks
//}

//func getFrags(block: String) -> [String] {
//    var ptr = 0
//    let charBuffer = block.map(String.init)
//    var frags = [String]()
//    var tempFrag = ""
//
//    if charBuffer.count > 2 {
//        while ptr <= charBuffer.count - 1 {
//            // Add the current char to a new string
//
//            if ptr == charBuffer.count - 1 {
//                tempFrag.append(charBuffer[ptr])
//                frags.append(tempFrag)
//                break
//            } else if charBuffer[ptr] == "\n" {
//                frags.append(tempFrag)
//                tempFrag = "" // Reset tempblock for next block
//                ptr += 2
//            } else {
//                tempFrag.append(charBuffer[ptr])
//                ptr += 1
//            }
//        }
//    }
//
//    return frags
//}

//// Test String 1
//let b = getBlocks(str: testString)
//
//for block in b {
//    print("Block: \n\(block)")
//}

// Test String 2
//let b2 = getBlocks(str: testString2)
//
////for block in b2 {
////    print("Block: \n\(block)")
////}
//
//// Testing frags
//let f1 = getFrags(block: b2[3])
//
//for frag in f1 {
//    print("Fragment: \n\(frag)")
//}
