import Foundation

func solution(_ n:Int) -> Int {
    let nCnt1 = String(String(n, radix: 2)).filter{ $0 == "1" }.count
    var biggerVal = n
    var answer = 0
    
    while answer == 0 {
        biggerVal += 1
        let bvCnt1 = String(String(biggerVal, radix: 2)).filter{ $0 == "1" }.count
        answer = bvCnt1 == nCnt1 ? biggerVal : 0
    }
    
    return answer
}
