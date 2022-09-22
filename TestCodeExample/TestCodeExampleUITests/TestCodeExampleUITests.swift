//
//  TestCodeExampleUITests.swift
//  TestCodeExampleUITests
//
//  Created by 조주혁 on 2022/09/22.
//

import XCTest

final class TestCodeExampleUITests: XCTestCase {
    var app: XCUIApplication!
    
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    func testButton() {
        
        // 1. Given
        let valueLabel = app.staticTexts["valueLabel"]
        let minusButton = app.buttons["minusButton"]
        let plusButton = app.buttons["plusButton"]
        
        // Then
        XCTAssertTrue(valueLabel.exists)
        XCTAssertTrue(minusButton.exists)
        XCTAssertTrue(plusButton.exists)
        
        // When
        plusButton.tap()
        // Then
        XCTAssertEqual(valueLabel.label, "1")
        
        // When
        minusButton.tap()
        // Then
        XCTAssertEqual(valueLabel.label, "0")
        
        // When
        minusButton.tap()
        // Then
        XCTAssertEqual(valueLabel.label, "0")
    }
}
