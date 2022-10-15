import Foundation

func solution(_ dirs:String) -> Int {
    // checkArr : 길을 건넜는지 체크하는 Bool 배열
    // 좌표를 이동하면서 checkArr True로 확인하기
    // 좌표의 시작점은 5,5 로 시작한다.
    // 최종 위치에서 얼마나 멀어졌는지 확인할 때 최종위치에서 dirs의 길이를 뺀다.
    // 마지막에 true의 개수를 구하면 됨
    // 움직였다는 정의 : 현위치 트루 && 목적지 트루 = 간 곳
    // 현위치
    var x = 5
    var y = 5
    var cnt = 0

    var checkArr = Array(repeating : Array(repeating : false , count : (2 * y) + 1) , count : (2 * x) + 1)
    
    var dirArr = dirs.map{$0}
    
    for i in dirArr {
        let preX = x
        let preY = y
        
        switch i{
            case "U":
                if y + 1 > 9 {continue}
                    y += 1
                    
            case "D":
                if y - 1 < 0 {continue}
                y -= 1
                 
            case "R":
                if x + 1 > 9 {continue}
                x += 1
                 
            case "L":
                if x - 1 < 0 {continue}
                x -= 1
                 
            default :
                break
        }
        if !(checkArr[preX][preY] && checkArr[x][y]) {
           cnt += 1
        }
        checkArr[preX][preY] = true
        
    }
    
    
    return cnt
}

solution("LULLLLLLU")
