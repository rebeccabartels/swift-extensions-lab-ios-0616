//
//  Extensions.swift
//  Extensions
//
//  Created by Rebecca Bartels on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
extension String {
        
        func whisper() -> String {
            
            let whisper = self.lowercaseString
            
            return whisper
        }
        
        func shout() -> String {
            
            let shouts = self.uppercaseString
            
            return shouts
        }
        
        var pigLatin: String {
            
            guard self.characters.count > 1 else { return self }
            
            var result = self.lowercaseString
            let arrayFromString = result.componentsSeparatedByString(" ")
            var arrayResult:[String] = []
            
            for word in arrayFromString{
                
                var editableWord = word
                let firstLetter = word[word.startIndex]
                
                editableWord.removeAtIndex(result.startIndex)
                editableWord += String(firstLetter)
                editableWord += "ay"
                arrayResult.append(editableWord)
            }
            
            result = arrayResult.joinWithSeparator(" ")
            
            return result.capitalizedString
        }
        
        var points: Int {
            
            guard self.characters.count > 0 else {return 0}
            
            let arrayFromString = self.componentsSeparatedByString("")
            let consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","z"]
            let vowels = ["a","e","i","o","u","y"]
            var points = 0
            
            for word in arrayFromString {
                
                let wordArray = Array(word.characters)
                
                for letter in wordArray{
                    
                    if consonants.contains(String(letter).lowercaseString) {
                        
                        points += 1
                        
                    }else if vowels.contains(String(letter).lowercaseString){
                        
                        points += 2
                    }
                    
                }
            }
            
            return points
        }
    }
    
    //MARK: - Numbers
    extension Int {
        
        var halved: Int{return half()}
        
        var squared: Int {
            
            return self * self
        }
        
        mutating func square() {
            
            self = self * self
        }
        
        func half()->Int{
            
            let newInt = self / 2
            
            return newInt
        }
        
        func isDivisibleBy(number: Int) -> Bool {
            
            return self % number == 0
        }
    }
    
    // MARK: - Emoji Fun
    extension String{
        
        var unicornLevel: String {
            
            var unicorns = ""
            let strings = self.stringByReplacingOccurrencesOfString(" ", withString: "")
            
            for _ in 0..<strings.characters.count{
                
                unicorns.appendContentsOf("🦄")
            }
            
            return unicorns
        }
    }
    
    
    
    
    
    

