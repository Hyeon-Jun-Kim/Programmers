import UIKit
func solution(_ s:String) -> [Int] {
    var remove = 0
    var roof = 0
    var s = s
    while s != "1" {
        roof += 1
        remove += Array(String(s)).filter{ $0 == "0" }.count
        s = String(String(Array(String(s)).filter{ $0 == "1" }).count, radix: 2)
    }
    return [roof, remove]
}


print( solution("110010101001") )
    
