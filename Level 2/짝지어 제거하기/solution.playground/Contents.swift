import Foundation

func solution(_ s:String) -> Int{
    var arr = Array(s)
    var result = [Character]()
    
    for i in arr {
        if result.isEmpty { result.append(i) }
        else {
            if result.last == i {result.removeLast()}
            else { result.append(i) }
        }
    }

    return result.isEmpty ? 1 : 0
}

