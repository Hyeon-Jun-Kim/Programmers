import Foundation

func solution(_ operations:[String]) -> [Int] {
    var queue = [Int]()
    
    for i in operations {
        let command = i.split(separator: " ").map({String($0)})
        
        if command[0] == "I" { queue.append(Int(command[1])!) }
        else if command[0] == "D" && !queue.isEmpty {
            if command[1].contains("-") { queue.sort(by: >); queue.removeLast() }
            else { queue.sort(); queue.removeLast() }
        }
    }
    
    return queue.isEmpty ? [0, 0] : [queue.max()!, queue.min()!]
}
