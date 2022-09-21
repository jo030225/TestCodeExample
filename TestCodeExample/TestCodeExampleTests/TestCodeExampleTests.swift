//
//  TestCodeExampleTests.swift
//  TestCodeExampleTests
//
//  Created by 조주혁 on 2022/09/21.
//

import XCTest
@testable import TestCodeExample

final class TestCodeExampleTests: XCTestCase {

    var sut: ViewModel!
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = ViewModel()
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func testMinus() {
        // 1. given
        sut.value = 2
        
        // 2. when
        sut.minus()
        
        // 3. then
        XCTAssertEqual(sut.value, 1)
    }
    
    func testPlus() {
        // 1. given
        sut.value = 10
        
        // 2. when
        sut.plus()
        
        // 3. then
        XCTAssertEqual(sut.value, 11)
    }
}
