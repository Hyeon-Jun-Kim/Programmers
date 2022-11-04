import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var arr : [[String]] = Array(repeating: Array(repeating: "", count: (words.count / n) + 1), count: n)
    
    var person = 0
    var tern = 0
    var isError = 0
    for i in words {
        
        // 중복 체크
        arr.forEach{ if $0.filter{ $0 == i }.count != 0 { isError = 1 } }
        
        // 단어 길이 체크
        if i.count == 1 {
            isError = 1
        }
        
        // 단어 첫글자 체크
        if tern != 0, person == 0 {
            if arr[n-1][tern-1].last != i.first {
                isError = 1
            }
        } else if tern != 0 {
            if arr[person-1][tern].last != i.first {
                isError = 1
            }
        }
        
        guard isError == 0 else { break }
        
        arr[person][tern] = i
        person += 1
        
        if person % n == 0 {
            person = 0
            tern += 1
        }
    }
    
    return isError == 0 ? [0,0] : [person + 1,tern + 1]
}

var arr = ["tank", "kick", "know", "wheel", "land", "dream", "mother", "robot", "tank"]
solution(3, arr)
solution(5, ["hello", "observe", "effect", "take", "either", "recognize", "encourage", "e", "establish", "hang", "gather", "refer", "reference", "estimate", "executive"])
