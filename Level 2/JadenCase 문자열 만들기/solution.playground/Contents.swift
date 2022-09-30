import UIKit
func solution(_ s:String) -> String {
    return s.components(separatedBy: " ").map { str in
        return str.enumerated().map { (index, char) in
            if index == 0 {
                return char.isLetter ? String(char.uppercased()) : String(char)
            } else {
                return String(char.lowercased())
            }
        }.joined() }.joined(separator: " ")
}
