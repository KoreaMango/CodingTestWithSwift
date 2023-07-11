# DFS

``` swift
func DFS(graph: [String: [String]], start: String) -> [String] {
    var visitedQueue: [String] = []
    var needVisitStack: [String] = [start]
    
    while !needVisitStack.isEmpty {
        let node: String = needVisitStack.removeLast()
        if visitedQueue.contains(node) { continue }
        
        visitedQueue.append(node)
       needVisitStack += graph[node] ?? []
    }
    
    return visitedQueue
}
 
```

# BFS
``` swift
func BFS(graph: [String: [String]], start: String) -> [String] {
    var visitedQueue: [String] = []
    var needVisitQueue: [String] = [start]
    
    while !needVisitQueue.isEmpty {
        let node: String = needVisitQueue.removeFirst()
        if visitedQueue.contains(node) { continue }
        
        visitedQueue.append(node)
        needVisitQueue += graph[node] ?? []
    }
    
    return visitedQueue
}

```
