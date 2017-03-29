//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func repeatedDNAsequence(s: String) -> [String] {
    
    // Step 1. Length of the subsequence
    let k = 10
    
    // Step 2. Need a dictionary to store substrings
    var substringDictionary = [String: Int] ()
    
    // Step 3. Count every subsequence
    for i in 0...s.characters.count-k {
        
        // Step 4. Figure out what the subsequence is!!
        let startIndex = s.index(s.startIndex, offsetBy: i)
        let endIndex = s.index(s.startIndex, offsetBy: i+10)
        let substring = s[startIndex..<endIndex]
        print(substring)
        
        // Step 5. Add the substring to the dictionary
        if let value = substringDictionary[substring] {
            substringDictionary[substring] = value + 1
        } else {
            substringDictionary[substring] = 1
        }
        
    }
    
//    // Step 6. Filter out the substring that we only saw once
//    let repeatedSubstrings = substringCount.filter { (key, value) -> Bool in
//        return value > 1
//    }
//    // STep 7. Dump the count of the remaining substrings
//        } .map { (key, value) -> String in
//            return key
    
    // With for loop for step 7 & 6. Filter out the substrings that we saw more than once
    var repeats = [String]()
            for (key, value) in substringDictionary {
                if value > 1 {
                    repeats.append(key)
                }
            }
    
            
    // Step 8. Sort
    let sortedRepeatedSubstrings = repeats.sorted()
    
    return sortedRepeatedSubstrings

}


let testOne = "AAAAACCCCCAAAAACCCCCAAAAAGGGTTT"
//let testTwo =


print(repeatedDNAsequence(s: testOne))
