import UIKit

func solution(_ x:Int) -> Bool {
    return x % String(x).map{ str -> Int in Int(String(str))! }.reduce(0, +) == 0
}
