import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    let a = A.sorted{ $0 < $1 }
    let b = B.sorted{ $0 > $1 }
    var ans = 0
     
    for i in 0..<A.count {
        ans += a[i] * b[i]
    }

    return ans
}
