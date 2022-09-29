import UIKit
func solution(_ s:String) -> String {
    let arr =  s.split(separator: " ").map{Int($0)!}.sorted{$1 > $0}
    return "\(String(arr.first!)) \(String(arr.last!))"
}
