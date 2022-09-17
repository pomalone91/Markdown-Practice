//
//  Document.swift
//  Markdown Practice
//
//  Created by Paul Malone on 9/17/22.
//

/// A structure representing a single Markdown document.
///
/// This is the root of the file structure that holds the rest of its component parts. A Markdown file has the following components.
/// - Blocks: Basically paragraphs of text. Lists, code and quote blocks are all "blocks". The end of a block is delimited by double \n\n.
/// - Fragments: Blocks are further broken down into fragments. The end of a fragment is marked by a single \n. Individual line items in a list are an example of a fragment.
/// - Elements: Inline elements within a fragment such as emphasized text or inline code.
///


import Foundation

struct Document {
    var markdownString: String
    var blocks: [Block]
    
    init(markdownString: String) {
        self.markdownString = markdownString
        
        // Get blocks from string
        // Map of characters in the string
        let charBuffer = markdownString.map(String.init)
        
        // Temp string to store individual blocks as they're built
        var tempBlock = ""
        var ptr = 0
        
        self.blocks = [Block]()

        if charBuffer.count > 2 {    // If the string is too small we won't even bother
            while ptr <= charBuffer.count - 1 {
                // Add the current char to a new string
                
                if ptr == charBuffer.count - 1 {
                    tempBlock.append(charBuffer[ptr])
                    self.blocks.append(Block.init(blockString: tempBlock))
                    break
                } else if charBuffer[ptr] == "\n" && charBuffer[ptr + 1] == "\n" {
                    self.blocks.append(Block.init(blockString: tempBlock))
                    tempBlock = "" // Reset tempblock for next block
                    ptr += 2
                } else {
                    tempBlock.append(charBuffer[ptr])
                    ptr += 1
                }
            }
        }
    }
}
