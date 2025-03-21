//
//  19532. 수학은 비대면강의입니다.swift
//  https://www.acmicpc.net/problem/19532
//  Algorithm
//
//  Created by ericKwon on 2025/03/21.
//

import Foundation

struct BOJ19532 {
  
    func solution(a: Int, b: Int, c: Int, d: Int, e: Int, f: Int) -> (x: Int, y: Int) {
        for x in -999...999 {
            for y in -999...999 {
                let firstCal = a * x + b * y
                let secondCal = d * x + e * y
                
                if firstCal == c, secondCal == f {
                    return (x, y)
                }
            }
        }
        return (1000, 1000)
    }
}
