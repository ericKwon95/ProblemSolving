//
//  161988. 연속 펄스 부분 수열의 합.swift
//  https://school.programmers.co.kr/learn/courses/30/lessons/161988?language=swift
//  Algorithm
//
//  Created by ericKwon on 2025/03/21.
//

import Foundation

struct Programmers161988 {
    
    func solution(_ sequence:[Int]) -> Int64 {
        var pulse = -1
        
        let pulsedSequence1: [Int] = sequence.map {
            if pulse == -1 {
                pulse = 1
            } else {
                pulse = -1
            }
            return $0 * pulse
        }
        
        pulse = 1
        
        let pulsedSequence2: [Int] = sequence.map {
            if pulse == -1 {
                pulse = 1
            } else {
                pulse = -1
            }
            return $0 * pulse
        }
        
        var prefix1 = Array(repeating: 0, count: sequence.count)
        var prefix2 = Array(repeating: 0, count: sequence.count)
        
        prefix1[0] = pulsedSequence1[0]
        prefix2[0] = pulsedSequence2[0]
        
        for i in 1..<pulsedSequence1.count {
            if prefix1[i-1] < 0 {
                prefix1[i] = pulsedSequence1[i]
            } else {
                prefix1[i] = pulsedSequence1[i] + prefix1[i-1]
            }
        }
        
        for i in 1..<pulsedSequence2.count {
            if prefix2[i-1] < 0 {
                prefix2[i] = pulsedSequence2[i]
            } else {
                prefix2[i] = pulsedSequence2[i] + prefix2[i-1]
            }
        }
        
        let firstMax = Int64(prefix1.max()!)
        let secondMax = Int64(prefix2.max()!)
        
        return max(firstMax, secondMax)
    }
}
