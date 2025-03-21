//
//  BOJ19532Tests.swift
//  AlgorithmTests
//
//  Created by ericKwon on 2025/03/21.
//
    
import Testing
    
@Suite("백준 19532 수학은 비대면강의입니다")
struct BOJ19532Tests {
    
    @Test("테스트케이스 1")
    func testExample1() {
        let problem = BOJ19532()
        let result = problem.solution(a: 1, b: 3, c: -1, d: 4, e: 1, f: 7)
        #expect(result == (2, -1))
    }
}
