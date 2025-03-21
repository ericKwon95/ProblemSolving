//
//  14568. 2017 연세대학교 프로그래밍 경시대회.swift
//  https://www.acmicpc.net/problem/14568
//  Algorithm
//
//  Created by ericKwon on 2025/03/21.
//

import Foundation

struct BOJ14568 {
  
    func solution(_ n: Int) -> Int {
        var count = 0

        for a in 1...n {
            for b in 1...n {
                for c in 1...n {
                    if a + b + c == n {
                        if c >= b + 2,
                        a != 0,
                        b != 0,
                        c != 0,
                        a % 2 == 0 {
                            count += 1
                        }
                    }
                }
            }
        }

        return count
    }
}
