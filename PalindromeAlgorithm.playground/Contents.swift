/*:
 # Plaindrome Problem
 
 ## Goal
 Write an algorithm to check whether a string is a palindrom
 
 **Example:**
 ```
 let palindrome = "Was it Eliot's toliet I saw?"
 isPalindrom(palindrom) // returns true
 ```
 
 > I implemented a recursive algorithm as well. See https://github.com/raywenderlich/swift-algorithm-club/tree/master/Palindromes for more details
 */
import UIKit

// Recursive Implementation - Slighty different implementation. Checks special characters too!
func isPalindromeRecursive(_ str: String) -> Bool {
  let strippedString = str.replacingOccurrences(of: "\\W", with: "", options: .regularExpression, range: nil)
  let length = strippedString.characters.count
  
  if length > 1 {
    return palindrome(strippedString.lowercased(), left: 0, right: length - 1)
  }
  
  return false
}

private func palindrome(_ str: String, left: Int, right: Int) -> Bool {
  if left >= right {
    return true
  }
  
  let lhs = str[str.index(str.startIndex, offsetBy: left)]
  let rhs = str[str.index(str.startIndex, offsetBy: right)]
  
  if lhs != rhs {
    return false
  }
  
  return palindrome(str, left: left + 1, right: right - 1)
}

// None recursive implementation
func isPalindrome(_ str: String) -> Bool {
  let strippedString = str.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).lowercased()
  let reversedStrippedString = String(strippedString.characters.reversed())
  return strippedString == reversedStrippedString
}


/// Tests

let one = "eye"
print(one + ":")
print(isPalindrome(one))
print(isPalindromeRecursive(one))
print()

let two = "Madam I'm adam."
print(two + ":")
print(isPalindrome(two))
print(isPalindromeRecursive(two))
print()

let three = "Was it Eliot's toilet I saw?"
print(three + ":")
print(isPalindrome(three))
print(isPalindromeRecursive(three))
print()

let four = "Never odd or even"
print(four + ":")
print(isPalindrome(four))
print(isPalindromeRecursive(four))
print()

let five = "Never had I ever."
print(five + ":")
print(isPalindrome(five))
print(isPalindromeRecursive(five))
print()

let six = "r ? a ? c ? e ? c ? a ? r"
print(six + ":")
print(isPalindrome(six))
print(isPalindromeRecursive(six))
print()
