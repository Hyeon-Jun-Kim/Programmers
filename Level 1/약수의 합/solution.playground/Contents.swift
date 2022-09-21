import UIKit

func solution(_ n:Int) -> Int {
    guard n != 0 else { return 0 }
    
    return (1...n).filter{ n % $0 == 0 }.reduce(0, +)
}
