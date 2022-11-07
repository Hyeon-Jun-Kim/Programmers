func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var ab: (a: Int, b: Int) = (a, b)
    var cnt: Int = 1
    while true {
        if (ab.a.isMultiple(of: 2) && ab.a - 1 == ab.b) || (!ab.a.isMultiple(of: 2) && ab.a + 1 == ab.b) {
            break
        }
        ab.a = ab.a % 2 == 0 ? ab.a / 2 : ab.a / 2 + 1
        ab.b = ab.b % 2 == 0 ? ab.b / 2 : ab.b / 2 + 1
        cnt += 1
    }
    
    return cnt
}
