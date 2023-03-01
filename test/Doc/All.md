# 내가 보려고 만든

# 주의

1. 시간초과일땐 **코딩 테스트에서는 dic 보단 튜플 적극 활용하고 filter보다는 for문을 더 사용해보자.**

# 입.출력

```swift
/// 💎 입력 받기
let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }

/// 💎 출력 하기
/// 마지막 공백 없애기
print(n, terminator: "")
```

# 구조체

```swift
/// 💎 구조체 초기화
struct Position {
    var X : Int
        var Y : Int
}
```

# 배열

```swift
/// 💎 배열 초기화
let isPrimArray = Array(repeating: true, count : n+1)

/// 💎 배열의 길이
let result = arr.count

/// 💎 배열 값 삭제 방법
if let firstIndex = arr.firstIndex(of: "target") { // 앞에서 부터 조회 , firstIndex 값 : 1, 2, 3 Int 형식임, 문자열 처럼 index 타입이 아님
    arr.remove(at: firstIndex)
}

if let lastIndex = arr.lastIndex(of: "target") { // 뒤에서부터 조회
    arr.remove(at: lastIndex)
}

/// 또는 바로 인덱스로 제거
var animals = ["cats", "dogs", "chimps", "moose"]

animals.remove(at: 2)  //["cats", "dogs", "moose"]

// 맨 뒤에 위치한 원소 삭제 후 반환 (원소가 하나라도 있어야 함)
arr.removeLast()    // [1, 2, 4, 5]

// 맨 앞에 위치한 원소 삭제 후 반환 (원소가 하나라도 있어야 함)
arr.removeFirst()    // [2, 4, 5]

// 마지막 원소 pop (반환 타입은 옵셔널)
arr.popLast()!    // [2, 4]

// 모든 원소 삭제
arr.removeAll()

// 조건을 만족하는 모든 원소 삭제
arr.removeAll(where: { $0 % 2 == 0} )
arr.removeAll { $0 % 2 == 0 }

/// 💎 배열 첫 번째, 마지막 번째 값 가져오기
array.first     
array.last    

/// 💎 반복문에서 배열의 인덱스 가져오기 
let array: [String] = ["one", "two", "three", "four", "five"]
for (index, number) in array.enumerated() {
            print("\(index+1): \(number)")
} 
// 1: one 2: two 3: three 4: four 5: five

/// 💎 배열의 최대값 최소값
arr.min()
arr.max()

/// 💎 문자를 배열로 만들기
Array(s) // 안에 배열 값이 character
s.map{String($0)} // 안에 배열 값이 string

/// 💎 문자 배열을 문자로 만들기
String(arr[0...1]) // ArraySlice<Character>만 String 으로 변환 가능하다 
arr.joined() // [String] 배열 합치는 방법

/// 💎 문자를 캐릭터로 나눠서 배열로 바꾸기
var num = "HELLO"
Array(num) // 안에 값들은 Character임 안에 값들을 Int 로 바꾸려면 String 으로 바꾸고 다시 Int로 해야함

/// 💎 배열 뒤집기
Array(string.reversed()) // 문자열을 뒤집고 배열에 넣는 방법 , string.revsered()를 쌩으로 쓸 순 없다.
 
arr = Array(string) // 문자열을 배열에 넣고
arr.reverse() // 배열을 뒤집기

/// 💎 배열끼리 덧셈
var onArr = Array(repeating: ["AAA"], count : 3)
var twArr = Array(repeating: ["BBB"], count: 3)
let result = onArr + twArr 
print(result) // [["AAA"], ["AAA"], ["AAA"], ["BBB"], ["BBB"], ["BBB"]]
```

# 문자열

### 꿀팁

문자를 배열로 바꿔서 인덱스 접근하기

```swift
/// 💎 문자열 대체하기 
answer = answer.replacingOccurrences(of: "zero", with: "0") // of를 with로 대체함.

/// 💎 문자열 자르기
/// 🚨 인덱스의 범위, split을 이용해 얻은 부분문자열은 String이 아닌 Substring이라는 별도의 타입이므로, String으로 캐스팅해 주어야 한다.
/// 🚨 스위프트의 String에서는 인덱스로 정수(Int)를 받지 않는다. 그 대신 String.Index를 사용한다.
var split1 = str.split(whereSeparator: {$0 == " " || $0 == ","}) // whereSeparator 를 사용하면 클로져를 사용할 수 있다.
var split1 = str.split(separator: " ") // 이건 그냥 하나 활용

/// components 사용하기
/// 문자 배열을 리턴함, 분리자 기준으로 쪼갬
var str = "Hello Mango"
var arr = str.components(separatedBy: " ")
// ["Hello", "Mango"]

/// 💎 문자열 포함
number.contains(1) // return 값 : Bool

/// 💎 문자열 뒤에 문자붙이기
number.append("1")
number += "2"

/// 💎 문자열 인덱스 조회 
/// prefix(n) : 앞에서부터 n글자 가져오기
let he = hello.prefix(2)

/// subffix(n) : 뒤에서부터 n글자 가져오기
let lo = hello.suffix(2)

/// startIndex 활용하기
let first = hello[hello.startIndex]

/// endIndex 활용하기
let endIdx = hello.index(before: hello.endIndex)
let last = hello[endIdx]

/// 💎 문자열의 처음부터 n번째 글자 구하기
let idx = str.index(str.startIndex, offsetBy: 2) // 앞에서 부터 2번째 문자 인덱스
let idx = str.index(str.endIndex, offsetBy: -2) // 뒤에서 부터 -2번째 문자 인덱스

/// 💎 문자열의 특정 문자의 인덱스 구하기
let oIndex = hello.index(of: "o")

/// 💎 인덱스 사이 값 구하기
let ellSubstring = hello[rangeStartIndex...rangeEndIndex]

/// 💎 인덱스에 문자 삽입
str.insert("-", at: idx)

/// 💎 문자열 생성하기
/// 0이라는 문자를 count 만큼 생성한 문자열 만들기.
String(repeating: "0", count: )

/// 💎 소문자 대문자 변경
str = str.lowercased() // 소문자 만들기
str = str.uppercased() // 대문자 만들기

/// 💎 소문자인가?, 대문자인가?, 구분하기, 구별하기 
str.isLowercase
str.isUppercase

/// 💎 문자열 삭제
/// Return 값이 substring 이다.
let string = "0123456789"
let substring1 = string.dropLast(2) // "01234567"
let substring2 = substring1.dropLast() // "0123456"

/// 양끝에 문자를 제거해서 새문자열 반환
var swiftStr1 = "#Swift!"
swiftStr1.trimmingCharacters(in: ["#","!"]) // Swift

var swiftStr2 = "#Swift!"
swiftStr2.trimmingCharacters(in: ["#"])// Swift!

/// 공백 제거 
result.trimmingCharacters(in: .whitespaces)

/// 💎 숫자 구별하기, 문자 구별하기
isNummber
isLetter

// 💎 문자열 시작부터 동일한가?
let s = "String"
let str = "Str"
let tr = "tr"

print(s.starts(with: str)) // true
print(s.starts(with: tr)) // faslse

// 💎 문자열 길이 구하기
var str = "Pokémon"

str.count  // 7
```

# 열거형

```swift
enum 
```

# 딕셔너리

```swift
/// 💎 딕셔너리 선언
var reported: [String: Int] = [:]

/// 💎 딕셔너리 키를 통한 값 호출
let arr = [1: "Hi", 2: "Bye", 3: "Nice"]
print(arr[1])
```

# 반복문

```swift
/// 💎 break 사용 방법
break // break 를 사용하면 브레이크 근처에 있는 반복문이 멈춘다. 

/// 💎 배열 역순
for i in arr.reversed(){ // reversed의 리턴 값은 :ReversedCollection<Array<Character>> 이다. 
    // Do Something
}

/// 💎 숫자 역순
/// stride 사전적 의미 : 보폭
for i in stride(from: n, to: 0, by: -1) { // n 에서 0 앞에 숫자 까지 줄어든다. 즉, 1까지 줄어듬
    //Do Something
}

for i in stride(from: n, through : 0, by : 1) // 이건 0까지 다 줄어듬 
{}
```

# 튜플

```swift

```

# Map

```swift
/// 💎 flatMap
/// 1차원 배열을 flat하게 만들어주고, nil을 제거 하고, 옵셔널 바인딩 하지만 1차원일땐 compactMap을 사용하자.
/// 2차원 배열을 1차원 배열로 flat하게 만들어준다.

/// 💎 compactMap
/// 1차원 배열을 flat하게 만들어주고, nil을 제거 하고, 옵셔널 바인딩
/// 2차원 배열을 1차원 배열로 flat하게 만들어주지 않는다.
combinations(array).compactMap { Int($0) }
```

# Filter

```swift
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

# Reduce

```swift
/// 💎 map으로 배열 각 자리수 덧셈
(0...arr.count-1).map{arr[$0] + arr2[$0]}.reduce(0,+)
```

# Zip

```swift
/// 💎 Zip 정의
/// 두 개의 시퀀스로 구성된 것을 가지고 시퀀스 쌍을 만든다.
/// 두 개의 파라미터가 필요하고 리턴 값은 튜플 쌍인 시퀀스이다.
let sequence1 = ["K", "P", "L", "C"]
let sequence2 = [1,2,3,4]

let sequenceZip = zip(sequence1, sequence2)

for i in sequenceZip {
    print(i) // ("K" , 1 )
}

for (i, j) in sequenceZip{
    print(i, j) // "K 1"
}
```

# 수학 공식

```swift
/// 💎 소수 체크 - target : n
for i in 2..< n {
    if n % i == 0 {
        return false    
    }
    return true
}

/// 💎 최대값, 최소값 구하기
max(num1, num2, num3)
min(num1, num2, num3)

/// 💎 약수의 개수 - 자연수를 소인수분해 했을 때 각 소인수에 1을 더한 수들을 곱한 값
/// 또는 (1...n).map{$0}.filter{n%$0 == 0}.count
/// 또는 제곱근에 소수점이 없으면 약수의 갯수가 홀수고 있으면 짝수임.
/// import Foundation 필수
sqrt(9.0) // 제곱근 구하기 입력, 반환 모두 Double
floor(_:) // 소수점 값 없애기
pow(value, 2) // value: 제곱할 값, 2: 제곱 수 , pow(_: Float, _: Float) -> Float

/// 💎 10진수 -> 2진수 만들기
result = String(value,radix: 2) // int 변수의 값이 2진수의 문자열로 반환

/// 💎 2진수 -> 10진수 만들기
/// 2진수를 10진수로 바꾸는 방법은, String 형태의 2진수여야 하고, 10진수는 Int형이므로 Int로 받아야 합니다!
/// Int(value,radix: 2)! 에서 !는 value의 문자열이 숫자로 변환되지 않을 때 nil을 반환할 수도 있기 때문에 적어줘야 합니다!
result = Int(value,radix: 2)!

/// 💎 2진수 비트연산 
/// 연산자 옆에 스페이스로 무조건 띄워야함.
/// AND
2 & 1
/// OR
2 | 1
/// XOR
2 ^ 1

/// 💎 절대값
var absInt = abs(integer)

/// 💎 주어진 숫자들로 가능한 모든 숫자 조합을 만드는 것인데 이건 순열 알고리즘을 이용하면 된다.
/// stack을 이용한 방법과 재귀를 이용한 방법 두가지로 구성할 수 있다.
/// 순열

/// 조합 
func combinations(_ array: [String]) -> Set<String> {
    if array.count == 0 { return [] }

    let answerArray = (0..<array.count).flatMap { i -> [String] in
        var removedArray = array
        let elem = removedArray.remove(at: i)
        var elemT = combinations(removedArray).map { elem + $0 }
        return [elem] + elemT
    }
   
    return Set(answerArray)
}

/// 💎 소수 찾기
func isPrime(_ num: Int) -> Bool {
    if num < 4 {
        return (num <= 1) ? false : true
    } else {
        for i in 2...Int(sqrt(Double(num))) { // 루트 값까지 해도 됨 왜냐하면 최대값 이기 때문
            if num % i == 0 { // 소수로 나눴을 때 0이 되면 소수가 아님
                return false
            }
        }
    }
    return true
}

/// 💎 소수점 다루기
ceil(값) = 소수점 올림
floor(값) = 소수점 내림
trunc(값) = 소수점 버림
round(값) = 소수점 반올림

/// 💎 에라토스테네스의 체
/// 1부터 100까지 소수를 출력
func printPrime() {
    var input = (2...100).map{Int($0)}
    var result: [Int] = []
    
    while input.isEmpty == false {
        let first = input.removeFirst()
        result.append(first)
        input = input.filter{$0 % first != 0}
    }
    print(result)
}

/// N 숫자가 소수인지 판별
/// 제곱근 까지만 약수를 확인하면 된다.
func isPrime(N: Int) {
    let num = Int(sqrt(Double(N)))
    
    for i in (2..<num) {
        if N % i == 0 {
            print(i, num)
            print("소수 아님")
        }
    }
}

/// 💎 유클리드
func gcd(_ a: Int, _ b: Int) -> Int {
    let mod: Int = a % b
    return 0 == mod ? min(a, b) : gcd(b, mod)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

func solution(_ n:Int, _ m:Int) -> [Int] {
    return [gcd(n, m), lcm(n, m)]
}

```

# 정렬

```swift
/// 💎 dictionary 정렬 - 알고리즘 문제에서 [:] 형으로 구성된 딕셔너리를 사용할 때, 값을 정렬하려면 sorted()메서드를 사용하면 된다.
/// sorted 는 배열, Set 도 된다.
/// sort 는 배열에만 사용하는 것임.
var point = [1:0, 2:0, 3:0]
point.sorted{ $0.key < $1.key } // 이렇게 정렬하면 Array가 리턴됨.
point.sorted(by: <).sorted{$0.value > $1.value} // 인덱스를 오름차순으로 먼저 정리하고, 값을 기준으로 내림차순한다.
```

# 삼항 연산자

```swift
/// 💎 삼항 연산자 사용법
score = letter.contains("D") ? number * number : number // 물음표 하나만 쓴 버전
score = letter.contains("D") ? number * number : letter.contains("T") ? number * number * number : number // false 자리에 else 처럼 계속 이어갈 수 있음
```

# 형변환

```swift
/// 💎 형 변환
/// String을 Int 로 형변환했는데 String 에 문자가 들어있으면 nil이 들어간다.
s = "123a"
print(Int(s)) // print : nil

/// Character 배열은 Int 로 변환이 불가능하다.
var arr : [Character] = ["1", "2", "3"]
arr.map{Int($0)!} // 이거 안됨 ❌
arr.map{Int(String($0))!} // 이렇게 해야함 ⭕️

/// 💎 아스키 코드
/// A = 65, a = 97
let c = Character(UnicodeScalar(65)) // 아스키 -> 문자열 

let i = Character("a").asciiValue!
```

# Set

```swift
// 1. Set 생성 및 선언
var intSet: Set<Int> = Set<Int>()
 
// insert: 새로운 멤버 입력
// 동일한 값은 여러번 insert 해도 한번만 저장됨
intSet.insert(1)
intSet.insert(10)
intSet.insert(10)
intSet.insert(100)
 
print(intSet) // {1, 10, 100}
 
// contains: 멤버 포함 여부 확인
print(intSet.contains(1)) // true
print(intSet.contains(99)) // false
 
// remove: 멤버 삭제
intSet.remove(10) // {100, 1}
intSet.removeFirst() // {1}
 
// count: 멤버 개수
intSet.count // 1
 
 
// 2. Set 의 활용
// 멤버의 유일성이 보장되기 때문에 집합 연산에 활용하면 유용
let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]
 
// 합집합
let union: Set<Int> = setA.union(setB)
print(union) // [2, 4, 5, 6, 7, 3, 1]
 
// 합집합 오름차순 정렬
let sortedUnion: [Int] = union.sorted()
print(sortedUUnion) // [1, 2, 3, 4, 5, 6, 7]
 
// 교집합
let intersection: Set<Int> = setA.intersection(setB)
print(intersection) // [5, 3, 4]
 
// 차집합
let subtracing: Set<Int> = setA.subtracing(setB)
print(subtracing) // [2, 1]
```

# BFS

> 반복문, Queue
> 

```swift
var needVisitQueue: [Int] = []

func bfs(start: Int) {
  needVisitQueue.append(start) // enqueue
  visited[start] = true  // 방문 처리
  
  while needVisitQueue.isEmpty == false { // 비어있지 않으면 반복
    let elem = needVisitQueue.removeFirst() // dequeue
    
    for i in graph[elem] { // 해당 위치의 하위 노드 순회
      if visited[i] == false { // 방문한 적이 없으면 
          needVisitQueue.append(i) // enqueue
          visited[i] = true // 방문처리
      }
    }
  }
}
```

# DFS

> 재귀함수
> 

```swift
func dfs(start: Int) {
  visited[start] = true // 방문 처리
  
  print(start, terminator: " ")
  
  for i in graph[start] { // 왼쪽부터 순회
    if visited[i] == false {
      dfs(start: i)
    }
  }
}
```

# 백트래킹
