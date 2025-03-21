//
//  BOJ2503Tests.swift
//  AlgorithmTests
//
//  Created by ericKwon on 2025/03/21.
//
    
import Testing
    
@Suite("백준 2503 숫자 야구")
struct BOJ2503Tests {
    
    @Test("테스트케이스 1")
    func testExample1() {
        let problem = BOJ2503()
        let result = problem.solution(4, [
            (123, 1, 1),
            (356, 1, 0),
            (327, 2, 0),
            (489, 0, 1)
        ])
        #expect(result == 2)
    }
}
