//
//  Block.swift
//  Markdown Practice
//
//  Created by Paul Malone on 9/17/22.
//

import Foundation

struct Block {
    var blockString: String
    var fragments: [Fragment]
    
    // Initializers
    init(blockString: String) {
        self.blockString = blockString
        self.fragments = [Fragment]()
        
        // Build fragments
        var ptr = 0
        let charBuffer = blockString.map(String.init)
        var tempFrag = ""
        
        if charBuffer.count > 2 {
            while ptr <= charBuffer.count - 1 {
                // Add the current char to a new string
                
                if ptr == charBuffer.count - 1 {
                    tempFrag.append(charBuffer[ptr])
                    self.fragments.append(Fragment.init(fragmentString: tempFrag))
                    break
                } else if charBuffer[ptr] == "\n" {
                    self.fragments.append(Fragment.init(fragmentString: tempFrag))
                    tempFrag = "" // Reset tempblock for next block
                    ptr += 1
                } else {
                    tempFrag.append(charBuffer[ptr])
                    ptr += 1
                }
            }
        }
    }
}
