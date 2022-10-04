import Foundation

func solution(_ s:String) -> Bool {
    var s = s
    
    while s != "" {
        guard s.filter{ $0 == "(" }.count == s.filter{ $0 == ")" }.count else { return false }
        guard s.first == "(" , s.last == ")" else { return false }
        s.remove(at: s.firstIndex(of: "(")!)
        s.remove(at: s.firstIndex(of: ")")!)
    }
    return true
} // 효율성 오류

func solution2(_ s:String) -> Bool {
    var result = 0
    for i in s {
        if i == "("{
            result += 1
        } else if i == ")" {
            result -= 1
        }
        
        if result < 0 {
            break
        }
    }
    return result == 0 ? true : false
}
