func gcd(_ a: Int, _ b: Int) -> Int {
    let _a = a > b ? a : b
    let _b = a < b ? a : b

    let r = _a % _b

    if r == 0 {
        return _b
    } else {
        return gcd(r, _b)
    }
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return (a * b) / gcd(a, b)
}

func solution(_ arr:[Int]) -> Int {
    var temp =  arr

    for i in 0..<(arr.count - 1) {
        temp[i + 1] = lcm(temp[i], temp[i + 1])
    }

    return temp.last!
}
