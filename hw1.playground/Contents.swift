//: # Homework 1 - Swift Playground



//: In order to answer the [EXPLAIN YOUR ANSWER HERE] questions,

//: you must go to Editor -> Show Raw Markup and edit the bracketed text.

//: Once done, go to Editor -> Show Rendered Markup to return to the previous view mode.





import UIKit







//: ## Q1: Optionals

class Words {
    
    var wordA : String!
    
    var wordB : String!
    
    
    
    init (wordA: String?, wordB: String?) {
        
        self.wordA = wordA
        
        self.wordB = wordB
        
    }
    
    
    
    //: ### We want to know why the code above works. Answer each question part below.
    
    
    
    
    
    //: ### a) What data type is **words**, and what is the type of the data it can hold?
    
    
    
    
    
    //: [An array of optionals. Optional]
    
    
    
    
    
    //: ### b) What is the type of **words[0]** annd **words[1]**.
    
    
    
    
    
    //: [Optional]
    
    
    
    
    
    //: ### c) What is the type of **wordsA** and **wordsB?**? Why?
    
    
    
    
    
    //: [String. They are defined to be strings]
    
    
    
    
    
    //: ## Q2: Variable Types and Function Types
    
    static func arePalindromes(words: [String]) -> Bool! {
        
        let reversedWords = words.map() {String($0.characters.reverse())}
        
        var numElements = words.count
        
        
        
        for var i = 0; i < numElements; i++ {
            
            if words[i] != reversedWords[i] {
                
                return false
                
            }
            
        }
        
        return true
        
    }
    
    //: ### Debug the code above. Why did the compiler dislike the **for loop**?
    
    //: ### What value should we expect to return?
    
    
    
    
    
    //: [Because i would be a constant if we use "let" to define it. Return true if all words in "words" are palindromes. Return false otherwise.]
    
    
    
    
    
    
    
    //: ## Q3: More functions, and object initialization
    
    func isAnagram() -> Bool {
        
        var countLetters = [Character : Int]() //***IMPORTANT***
        
        var lenA = wordA.characters.count
        
        var lenB = wordB.characters.count
        
        
        
        if lenA != lenB {
            
            return false
            
        }
        
        
        
        var arrA = Array(wordA.characters)
        
        var arrB = Array(wordB.characters)
        
        
        
        for i in 0...lenA-1 {
            
            let letter = arrA[i]
            
            if let val = countLetters[letter] {
                
                countLetters[letter] = val + 1
                
            } else {
                
                countLetters[letter] = 1
                
            }
            
        }
        
        
        
        for i in 0...lenB-1 {
            
            let letter = arrB[i]
            
            if let val = countLetters[letter] {
                
                countLetters[letter] = val - 1
                
            } else {
                
                return false
                
            }
            
        }
        
        
        
        for (letter, count) in countLetters {
            
            if count != 0 {
                
                return false
                
            }
            
        }
        
        return true
        
    }
    
}

//: ### The method above should be returning **true** or **false**. Debug the code so that

//: ### this is true. You should edit the isAnagram and ONLY the isAnagram function.

//: ### What was wrong?





//: [Need to initiate countLetters. We should return true instead of nil. Also, we need to make the first function static since there is not an incidence of Words]





//: ## Check Your Answers

//: ### If you now see an output stream in the right sidebar, you have successfully

//: ### debugged the code above. Remember that you must also fully and correctly answer

//: ### all of the written questions above to receive full credit for this homework.



//: **DO NOT** touch any code below this point.

//Words.isAnagram("anagram", wordB: "managra") //***need to label everything but the first arguement***

//Words.isAnagram("hello", wordB: "what")

//

//var palindromes = ["hih", "racecar", "mom", "wow"]

//var notPalindromes = ["gene", "shawn", "hello"]

//Words.arePalindromes(palindromes)

//Words.arePalindromes(notPalindromes)





//: **DO NOT** touch any code below this point.

Words.arePalindromes(["hih", "racecar", "mom", "wow"])

Words.arePalindromes(["gene", "shawn", "hello"])

var wordsObj = Words.init(wordA: "anagram", wordB: "managra")

wordsObj.isAnagram()

wordsObj.wordA = "hello"

wordsObj.wordB = "what"

wordsObj.isAnagram()

