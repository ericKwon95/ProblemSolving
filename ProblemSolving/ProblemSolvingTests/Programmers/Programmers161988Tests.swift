//
//  Programmers161988Tests.swift
//  AlgorithmTests
//
//  Created by ericKwon on 2025/03/21.
//
    
import Testing
    
@Suite("프로그래머스 161988 연속 펄스 부분 수열의 합")
struct Programmers161988Tests {
    
    @Test("테스트케이스 1")
    func testExample1() {
        let problem = Programmers161988()
        let result = problem.solution([2, 3, -6, 1, 3, -1, 2, 4])
        #expect(result == 10)
    }
}
