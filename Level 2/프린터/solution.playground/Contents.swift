func solution(_ priorities:[Int], _ location:Int) -> Int {
    var priority = priorities.enumerated().map {($0.offset, $0.element)}
    var res = 0

    while true {
        let head = priority.remove(at: 0)
        if !priority.filter({head.1 < $0.1}).isEmpty {
            priority.append(head)
        } else if head.0 == location {
            res = priorities.count - priority.count
            break
        }
    }

    return res
}
