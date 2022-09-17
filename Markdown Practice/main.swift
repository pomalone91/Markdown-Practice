//
//  main.swift
//  Markdown Practice
//
//  Created by Paul Malone on 9/16/22.
//

import Foundation

print("Hello, World!")

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

//print(testString)

// Pointers
var ptr = 0



func getBlocks(str: String) -> [String] {
    // Map of characters in the string
    let charBuffer = str.map(String.init)
    
//    for c in charBuffer {
////        print("\(String(describing: charBuffer.firstIndex(of: c))):  \(c)")
//        print("\(c)")
//    }
    
    // String var to hold blocks
    var blocks = [String]()
    
    // Temp string to store individual blocks as they're built
    var tempBlock = ""

    if charBuffer.count > 2 {    // If the string is too small we won't even bother
        while ptr <= charBuffer.count - 1 {
            // Add the current char to a new string
            
            if ptr == charBuffer.count - 1 {
                tempBlock.append(charBuffer[ptr])
                blocks.append(tempBlock)
                break
            } else if charBuffer[ptr] == "\n" && charBuffer[ptr + 1] == "\n" {
                blocks.append(tempBlock)
                tempBlock = "" // Reset tempblock for next block
                ptr += 2
            } else {
                tempBlock.append(charBuffer[ptr])
                ptr += 1
            }
        }
    }
    return blocks
}

let b = getBlocks(str: testString)

for block in b {
    print("Block: \n\(block)")
}
