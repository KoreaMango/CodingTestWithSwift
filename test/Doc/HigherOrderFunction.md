#  Higher Order Function
### Map
```
/// ๐ flatMap
/// 1์ฐจ์ ๋ฐฐ์ด์ flatํ๊ฒ ๋ง๋ค์ด์ฃผ๊ณ , nil์ ์ ๊ฑฐ ํ๊ณ , ์ต์๋ ๋ฐ์ธ๋ฉ ํ์ง๋ง 1์ฐจ์์ผ๋ compactMap์ ์ฌ์ฉํ์.
/// 2์ฐจ์ ๋ฐฐ์ด์ 1์ฐจ์ ๋ฐฐ์ด๋ก flatํ๊ฒ ๋ง๋ค์ด์ค๋ค.



/// ๐ compactMap
/// 1์ฐจ์ ๋ฐฐ์ด์ flatํ๊ฒ ๋ง๋ค์ด์ฃผ๊ณ , nil์ ์ ๊ฑฐ ํ๊ณ , ์ต์๋ ๋ฐ์ธ๋ฉ
/// 2์ฐจ์ ๋ฐฐ์ด์ 1์ฐจ์ ๋ฐฐ์ด๋ก flatํ๊ฒ ๋ง๋ค์ด์ฃผ์ง ์๋๋ค.
combinations(array).compactMap { Int($0) }
```

###Filter
```
/// ๐ first(where:)
/// filter๋ ์ค์ํํธ์์ ๊ฐ์ฅ ์ธ๊ธฐ ์๋ ๋ฉ์๋์ด์ง๋ง, ๋๋ก  ๋ค๋ฅธ ๋ฉ์๋๊ฐ ์ ์ ํฉ๋๋ค.
/// ์กฐ๊ฑด์ ํด๋นํ๋ ์ฒซ ๋ฒ์งธ ์์๋ฅผ ๊ฐ์ ธ์ฌ ๋ first(where:)์ ์ฌ์ฉํ  ์ ์์ต๋๋ค.
// Instead of:
if let element = array.filter { $0.title.contains(searchString) }.first {
    // do something
}

// Do:
if let element = array.first(where: { $0.title.contains(searchString) }) {
    // do something
}

/// ๐ contains(where:)
/// filter ๋์ ์ ์ฌ์ฉํ  ๋ฉ์๋์๋๋ค.
/// Instead of:
if array.filter { !$0.isActive }.count > 0 {
    // do something
}

// Do:
if array.contains(where: { !$0.isActive }) {
    // do something
}


/// ๐ filter ๋ฆฌํด ๊ฐ ์กฐ๊ฑด ์ค์ 
return d.sorted().filter{
        budget = budget - $0
        return budget >= 0
            }.count


/// ๐ isNumber?
let filterStr = str.filter{$0.isNumber}
```

### Reduce
```
/// ๐ map์ผ๋ก ๋ฐฐ์ด ๊ฐ ์๋ฆฌ์ ๋ง์
(0...arr.count-1).map{arr[$0] + arr2[$0]}.reduce(0,+)
```
