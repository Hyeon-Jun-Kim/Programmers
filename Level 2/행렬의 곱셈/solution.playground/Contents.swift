import Foundation
 
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result = Array(repeating: [Int](), count: arr1.count)
    
    for i in 0..<arr1.count {
        for j in 0..<arr2[0].count{
            var value = 0
            for k in 0..<arr2.count{
                value += arr1[i][k] * arr2[k][j]
            }
            result[i].append(value)
        }
    }
    return result
}
