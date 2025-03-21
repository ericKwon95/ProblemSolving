//
//  BOJ14568Tests.swift
//  AlgorithmTests
//
//  Created by ericKwon on 2025/03/21.
//
    
import Testing
    
@Suite("백준 14568 2017 연세대학교 프로그래밍 경시대회")
struct BOJ14568Tests {
    
    @Test("테스트케이스 1")
    func testExample1() {
        let problem = BOJ14568()
        let result = problem.solution(6)
        #expect(result == 1)
    }
}
