import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var arr : [[String]] = Array(repeating: Array(repeating: "", count: (words.count / n) + 1), count: n)
    
    var person = 0
    var tern = 0
    var isError = 0
    for i in words {
        
        arr.forEach{ if $0.filter{ $0 == i }.count != 0 { isError = 1 } }
        
        if tern != 0, person == 0 {
            if arr[n-1][tern-1].last != i.first {
                isError = 1
            }
        } else if tern != 0 {
            if arr[person-1][tern].last != i.first {
                print("오답")
                isError = 1
            }
        }
        
        guard isError == 0 else { break }
        
        arr[person][tern] = i
        person += 1
        
        print(arr)
        
        if person % n == 0 {
            person = 0
            tern += 1
        }
    }
    
    return isError == 0 ? [0,0] : [person + 1,tern + 1]
}

var arr = ["hello", "observe", "effect", "take", "either", "recognize", "encourage", "ensure", "establish", "hang", "gather", "refer", "reference", "estimate", "executive"]
solution(5, arr)
