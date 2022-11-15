import Foundation

func solution(_ n:Int) -> Int
{
    var n = n
    var used = 0
    
    while n > 0 {
        used += (n % 2)
        n = (n % 2 == 0) ? (n / 2) : (n - 1)
    }
    
    return used
}
