import UIKit

var greeting = "Hello, playground"

func isAnagram(_ lhs: String, _ rhs: String) -> Bool {
    if lhs.count != rhs.count {
        return false
    }
    
    let lhsSorted = lhs.sorted()
    let rhsSorted = rhs.sorted()
    
    var i: Int = 0
    for lchar in lhsSorted {
        if rhsSorted[i] != lchar {
            return false
        }
        
        i += 1
    }
    
    return true
}

func isReverse(_ lhs: String, _ rhs: String) -> Bool {
    if lhs.count != rhs.count {
        return false
    }
    
    let rhsReversed = rhs.reversed()
    
    return lhs == String(rhsReversed)
}

func isPalindrome(_ word: String) -> Bool{
    return isReverse(word, String(word.reversed()))
}

enum HandShape{
    case paper, rock, cisors
}

enum MatchResult{
    case win, lose, draw
}

func match(_ lhs: HandShape,_ rhs: HandShape) -> MatchResult {
    if lhs == HandShape.paper {
        if rhs == HandShape.rock {
            return MatchResult.win
        }
        if rhs == HandShape.cisors {
            return MatchResult.lose
        }
    }
    
    if lhs == HandShape.rock {
        if rhs == HandShape.cisors {
            return MatchResult.win
        }
        if rhs == HandShape.paper {
            return MatchResult.lose
        }
    }
    
    if lhs == HandShape.cisors {
        if rhs == HandShape.paper {
            return MatchResult.win
        }
        if rhs == HandShape.rock {
            return MatchResult.lose
        }
    }
        
    return MatchResult.draw
}

func countStrings(_ strings: [String]) -> [String: Int] {
    var result : [String : Int] = [:]
    
    for word in strings {
        result[word, default: 0] += 1
    }
    
    return result
}

print(countStrings(["hola", "hola", "chau"]))

