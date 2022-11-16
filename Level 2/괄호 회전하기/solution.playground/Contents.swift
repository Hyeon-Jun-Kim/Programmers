import Foundation

func solution(_ s:String) -> Int {
    var arr = s
    var result = 0
    
    if s.count % 2 != 0 {
        return result
    }

    for i in 0 ..< arr.count {
        
        var arrCheck = arr
        
        for _ in 0 ..< arr.count / 2 {
            arrCheck = arrCheck.replacingOccurrences(of: "()", with: "")
            arrCheck = arrCheck.replacingOccurrences(of: "{}", with: "")
            arrCheck = arrCheck.replacingOccurrences(of: "[]", with: "")
        }
        
        if arrCheck.count == 0 { result += 1 }

        var first = arr.first!
        arr.append(first)
        arr.removeFirst()
    }
    
    return result
}

print(solution("[](){}"))
