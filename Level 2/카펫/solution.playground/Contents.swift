import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let total = brown + yellow
    var width = 0
    var height = 0
    
    for i in 1...total {
        if total % i == 0 {
            width = total / i
            height = i
        }
        
        if (width - 2) * (height - 2) == yellow {
            break
        }
    }
    
    
    return [width, height]
}
