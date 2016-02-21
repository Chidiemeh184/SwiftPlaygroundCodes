//  NAME: CHIDI EMEH
//  COURSE: CSCI 2994 (iOS Programming Fundamentals)
//  FILENAME: carserCipher.playground
//  DATE: 2/16/2016
//  EXERCISE 3: This program shows basic program caeser cipher
//              This shift can be varied


import Foundation

var plaintext = "Nearly all men can stand adversity, but if you want to test a man's character, give him power"
var smallAlphabets = "abcdefghijklmnopqrstuvwxyz"
var bigAlphanets = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
var specialcharacters = "1234567890', "

var shiftBy = 13

var cipher = " "

for c in plaintext.characters {
    
    var newletter: String = " "
    let letter = String(c)
   
    if specialcharacters.containsString(String(c)){
        newletter = letter
    }
    
    if smallAlphabets.containsString(String(c)) || bigAlphanets.containsString(String(c)){
        
             var range: Range<String.Index>
             var index: Int
        
            if letter.lowercaseString != letter {
                range = bigAlphanets.rangeOfString(letter)!
                index = smallAlphabets.startIndex.distanceTo(range.startIndex)
             }
            else {
                range = smallAlphabets.rangeOfString(letter)!
                index = smallAlphabets.startIndex.distanceTo(range.startIndex)
            }
            
            let newIndex = (index + shiftBy) % 26
        
        var start: Int = newIndex
        var end: Int = -1 * (25 - newIndex)
        
        if letter.lowercaseString != letter {
            newletter = bigAlphanets.substringWithRange(smallAlphabets.startIndex.advancedBy(start)..<smallAlphabets.endIndex.advancedBy(end))
        }
        else {
            newletter = smallAlphabets.substringWithRange(smallAlphabets.startIndex.advancedBy(start)..<smallAlphabets.endIndex.advancedBy(end))
        }
    }
    
    cipher += newletter
}

print(cipher)






