//
//  BOJ1816Tests.swift
//  AlgorithmTests
//
//  Created by ericKwon on 2025/03/21.
//
    
import Testing
    
@Suite("백준 1816 암호 키 테스트")
struct BOJ1816Tests {
    
    @Test("테스트케이스 1 테스트")
    func testExample1() {
        let problem = BOJ1816()
        let result = problem.solution(3, [
            1000036000099,
            1500035500153,
            20000000000002
        ])
        #expect(result == ["YES", "NO", "NO"])
    }
}
