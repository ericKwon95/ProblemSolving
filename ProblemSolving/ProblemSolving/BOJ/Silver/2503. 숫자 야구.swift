//
//  2503. 숫자 야구.swift
//  https://www.acmicpc.net/problem/2503
//  Algorithm
//
//  Created by ericKwon on 2025/03/21.
//

import Foundation

struct BOJ2503 {
    
    func solution(_ n: Int, _ hints: [(number: Int, strike: Int, ball: Int)]) -> Int {
        var answer = 0
        
        for hundreds in 1...9 {
            for tens in 1...9 {
                for ones in 1...9 {
                    if hundreds == tens || tens == ones || hundreds == ones {
                        continue
                    }
                    
                    var isHintAllCleared = true
                    
                    for hint in hints {
                        let hintNums = Array(String(hint.number)).map { Int(String($0))! }
                        let hintStrikeCount = hint.strike
                        let hintBallCount = hint.ball
                        
                        var strikes = 0
                        var balls = 0
                        
                        if hundreds == hintNums[0] {
                            strikes += 1
                        } else {
                            if hundreds == hintNums[1] {
                                balls += 1
                            }
                            if hundreds == hintNums[2]  {
                                balls += 1
                            }
                        }
                        
                        if tens == hintNums[1] {
                            strikes += 1
                        } else {
                            if tens == hintNums[0] {
                                balls += 1
                            }
                                
                            if tens == hintNums[2] {
                                balls += 1
                            }
                        }
                        
                        if ones == hintNums[2] {
                            strikes += 1
                        } else {
                            if ones == hintNums[0] {
                                balls += 1
                            }
                                
                            if ones == hintNums[1] {
                                balls += 1
                            }
                        }
                        
                        guard hintStrikeCount == strikes, hintBallCount == balls else {
                            isHintAllCleared = false
                            break
                        }
                    }
                    
                    if isHintAllCleared {
                        answer += 1
                    }
                }
            }
        }
        
        return answer
    }
}
