import UIKit

var greeting = "Hello, playground"

// create method to  Sort the string According to the frequency of character
func sortStringAccordingToFrequency(inputString: String) -> String {
    var result = ""
    var dictionary = [Character: Int]()
    for char in inputString {
        if let count = dictionary[char] {
            dictionary[char] = count + 1
        } else {
            dictionary[char] = 1
        }
    }
    let sortedDictionary = dictionary.sorted { $0.value > $1.value }
    for (key, value) in sortedDictionary {
        for _ in 0..<value {
            result.append(key)
        }
    }
    return result
}

// write test cases for above method
assert(sortStringAccordingToFrequency(inputString: "tree") == "eetr", "Failed")


