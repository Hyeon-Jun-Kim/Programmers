import UIKit

func solution(_ n:Int64) -> [Int] {
    return String(n).map{ String($0) }.reversed().map{ String -> Int in Int(String)! }
}
