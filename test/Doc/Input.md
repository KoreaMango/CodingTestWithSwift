# readLine()
- readLine()은 입력을 모두 optional String으로 처리하기 때문에 또 다른 처리가 필요하다.
- 엔터가 한번 입력되면 readLine() 한개가 끝나는 것이다.

### 정수 입력받기
```
let n = Int(readLine()!)!
```

### 문자열 하나 입력받기
```
let n = readLine()!
```

### 띄어쓰기로 구분하여 입력받기, 바로 배열 입력받기
- Components의 Return Type은 SubString 이다.
- import Foundation이 필수다.
```
let n = readLine()!.components(separatedBy: " ")
// Array<String> 
```

### 띄어쓰기로 정수 여러개 입력받기
- split의 Return Type은 SubString 이다.
- 속도가 Components 보다 빠르다.
```
let n = readLine()!.split(separator: " ").map{ Int(String($0))! }
```

### (띄어쓰기 없이) 한 번에 입력 받아서 배열로 return 하기
```
let n = Array(readLine()!)
```

# Substring
- substring은 성능 최적화를 위해 원본 String을 저장하는 메모리 영역을 재사용할 수 있다. 
- substring은 문자열 작업을 수행하는 짧은 시간 동안만 사용하며 결과를 더 오래 저장할 준비가 되면 substring을 string으로 변환한다.

