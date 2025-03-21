//
//  1816. 암호 키.swift
//  https://www.acmicpc.net/problem/1816
//  Algorithm
//
//  Created by ericKwon on 2025/03/21.
//

import Foundation

struct BOJ1816 {
  
    func solution(_ n: Int, _ tc: [Int]) -> [String] {
        var result = [String]()
        for s in tc {
            var flag = 0
            for n in 2...1_000_000 {
                if s % n == 0 {
                    print("NO")
                    result.append("NO")
                    flag = 1
                    break
                }
            }
            if flag == 0 {
                result.append("YES")
                print("YES")
            }
        }
        return result
    }
}
