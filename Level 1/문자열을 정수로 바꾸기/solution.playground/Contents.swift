import UIKit

func solution(_ s:String) -> Int {
    return Array(s)[0] == "+" ? Int(String(Array(s).dropFirst()))! : -Int(String(Array(s).dropFirst()))!
}

solution("+123")
