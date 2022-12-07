import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var typeCount: [String:Int] = [:]
    var count: Int = 1
    
    for cloth in clothes {
        if typeCount[cloth[1]] != nil {
            typeCount[cloth[1]]! += 1
        } else {
            typeCount[cloth[1]] = 1
        }
    }
    
    for (_, value) in typeCount {
        count *= (value + 1)
    }
    
    return count - 1
}
