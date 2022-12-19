import UIKit

func solution(_ arr:[Int]) -> [Int] {
    var result = arr
    guard let index = arr.firstIndex(of: arr.min() ?? 0) else { return [] }
    result.remove(at: index)

  return result.isEmpty ? [-1] : result
}

