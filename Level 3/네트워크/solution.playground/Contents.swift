import Foundation

func dfs(visited: inout [Bool], graph: [[Int]], index: Int, size: Int) {
     visited[index] = true
    
    for i in 0..<size {
        let target = graph[index][i]
        //방문하지 않았고 연결되어있다면
        if visited[i] == false && target == 1 {
            //어디까지 연결되어 있는지 확인
            dfs(visited: &visited, graph: graph, index: i, size: size)
        }
    }
}
func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    //노드 방문 확인
    var visited: [Bool] = [Bool](repeating: false, count: n)
    
    //결과값 counting
    var result = 0
    
    for i in 0 ..< n {
      //방문하지 않았다면 dfs실행
        if visited[i] == false {
            result += 1
            dfs(visited: &visited, graph: computers, index: i, size: n)
        }
    }
    
    return result
}
