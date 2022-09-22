import UIKit

func solution(_ n:Int64) -> Int64 {
    let v = ceil(sqrt(Double(n)))
    return pow(v, 2) == Double(n) ? Int64(pow(v+1, 2)) : -1
}

func solution2(_ n:Int64) -> Int64 {
    for i in 1...n {
        if i * i == n {
            return (i + 1) * (i + 1)
        }
    }
    return -1
}
