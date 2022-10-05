#  Higher Order Function
### Map
```
/// 💎 flatMap
/// 1차원 배열을 flat하게 만들어주고, nil을 제거 하고, 옵셔널 바인딩 하지만 1차원일땐 compactMap을 사용하자.
/// 2차원 배열을 1차원 배열로 flat하게 만들어준다.



/// 💎 compactMap
/// 1차원 배열을 flat하게 만들어주고, nil을 제거 하고, 옵셔널 바인딩
/// 2차원 배열을 1차원 배열로 flat하게 만들어주지 않는다.
combinations(array).compactMap { Int($0) }
```

###Filter
```
/// 💎 first(where:)
/// filter는 스위프트에서 가장 인기 있는 메서드이지만, 때론 다른 메서드가 적절합니다.
/// 조건에 해당하는 첫 번째 원소를 가져올 땐 first(where:)을 사용할 수 있습니다.
// Instead of:
if let element = array.filter { $0.title.contains(searchString) }.first {
    // do something
}

// Do:
if let element = array.first(where: { $0.title.contains(searchString) }) {
    // do something
}

/// 💎 contains(where:)
/// filter 대신에 사용할 메서드입니다.
/// Instead of:
if array.filter { !$0.isActive }.count > 0 {
    // do something
}

// Do:
if array.contains(where: { !$0.isActive }) {
    // do something
}


/// 💎 filter 리턴 값 조건 설정
return d.sorted().filter{
        budget = budget - $0
        return budget >= 0
            }.count


/// 💎 isNumber?
let filterStr = str.filter{$0.isNumber}
```

### Reduce
```
/// 💎 map으로 배열 각 자리수 덧셈
(0...arr.count-1).map{arr[$0] + arr2[$0]}.reduce(0,+)
```
