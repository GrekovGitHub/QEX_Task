//
//  QEX_Test_TaskUITests.swift
//  QEX_Test_TaskUITests
//
//  Created by Rostislav on 5/29/21.
//

import XCTest

class QEX_Test_TaskUITests: XCTestCase {

    var app: XCUIApplication!
    
    override func setUp() {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }
    
    func testDisplayingNumber(){
        app.buttons["7"].tap()
    }
    
    func testDisplayingTwentyNumbers(){
        app.buttons["7"].tap()
        app.buttons["8"].tap()
        app.buttons["9"].tap()
        app.buttons["4"].tap()
        app.buttons["5"].tap()
        app.buttons["6"].tap()
        app.buttons["1"].tap()
        app.buttons["2"].tap()
        app.buttons["3"].tap()
        app.buttons["0"].tap()
        app.buttons["7"].tap()
        app.buttons["8"].tap()
        app.buttons["9"].tap()
        app.buttons["4"].tap()
        app.buttons["5"].tap()
        app.buttons["6"].tap()
        app.buttons["1"].tap()
        app.buttons["2"].tap()
        app.buttons["3"].tap()
        app.buttons["0"].tap()
    }
    
    func testDisplayingTwentyOneNumber() {
        app.buttons["7"].tap()
        app.buttons["8"].tap()
        app.buttons["9"].tap()
        app.buttons["4"].tap()
        app.buttons["5"].tap()
        app.buttons["6"].tap()
        app.buttons["1"].tap()
        app.buttons["2"].tap()
        app.buttons["3"].tap()
        app.buttons["0"].tap()
        app.buttons["7"].tap()
        app.buttons["8"].tap()
        app.buttons["9"].tap()
        app.buttons["4"].tap()
        app.buttons["5"].tap()
        app.buttons["6"].tap()
        app.buttons["1"].tap()
        app.buttons["2"].tap()
        app.buttons["3"].tap()
        app.buttons["0"].tap()
        app.buttons["7"].tap()
    }
    
    func testDisplayingZeroAfterClearBtnTapped(){
        app.buttons["7"].tap()
        app.buttons["0"].tap()
        app.buttons["0"].tap()
        app.buttons["AC"].tap()
    }
    
    func testDisdlayingDotAfterDotBtnTapped(){
        app.buttons["7"].tap()
        app.buttons["8"].tap()
        app.buttons["9"].tap()
        app.buttons["."].tap()
    }
    
    func testDisdlayingDotWithZeroAfterDotBtnTapped(){
        app.buttons["."].tap()
    }
    
    func testDisplayingDoubleAfterDotBtnTapped(){
        app.buttons["1"].tap()
        app.buttons["2"].tap()
        app.buttons["3"].tap()
        app.buttons["."].tap()
        app.buttons["0"].tap()
    }
    
    func testDisplayingSecondOperandAfterAdditionBtnTapped() {
        app.buttons["7"].tap()
        app.buttons["8"].tap()
        app.buttons["+"].tap()
        app.buttons["9"].tap()
    }
    
    func testDisplayingSecondOperandAfterSubtractionBtnTapped() {
        app.buttons["4"].tap()
        app.buttons["5"].tap()
        app.buttons["-"].tap()
        app.buttons["6"].tap()
    }
    
    func testDisplayingSecondOperandAfterMultiplicationBtnTapped() {
        app.buttons["1"].tap()
        app.buttons["2"].tap()
        app.buttons["✕"].tap()
        app.buttons["3"].tap()
    }
    
    func testDisplayingSecondOperandAfterDivisionBtnTapped() {
        app.buttons["3"].tap()
        app.buttons["0"].tap()
        app.buttons["÷"].tap()
        app.buttons["3"].tap()
    }
    
    func testAdditionBtnDoubleTapped() {
        app.buttons["7"].tap()
        app.buttons["+"].tap()
        app.windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.tap()
    }
    
    func testSubtractionBtnDoubleTapped() {
        app.buttons["3"].tap()
        app.buttons["6"].tap()
        app.buttons["-"].tap()
        app.windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.tap()
    }
    
    func testMultiplicationBtnDoubleTapped() {
        app.buttons["2"].tap()
        app.buttons["5"].tap()
        app.buttons["✕"].tap()
        app.windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.tap()
    }
    
    func testDivisionBtnDoubleTapped() {
        app.buttons["1"].tap()
        app.buttons["4"].tap()
        app.buttons["÷"].tap()
        app.windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.tap()
    }
    
    func testResultOfAdditionAfterEqualTapped() {
        app.buttons["6"].tap()
        app.buttons["9"].tap()
        app.buttons["+"].tap()
        app.buttons["0"].tap()
        app.buttons["="].tap()
    }
    
    func testResultOfSubtractionAfterEqualTapped() {
        app.buttons["5"].tap()
        app.buttons["8"].tap()
        app.buttons["-"].tap()
        app.buttons["0"].tap()
        app.buttons["="].tap()
    }
    
    func testResultOfMultiplicationAfterEqualTapped() {
        app.buttons["4"].tap()
        app.buttons["7"].tap()
        app.buttons["✕"].tap()
        app.buttons["1"].tap()
        app.buttons["="].tap()
    }
    
    func testResultOfDivisionAfterEqualTapped() {
        app.buttons["2"].tap()
        app.buttons["÷"].tap()
        app.buttons["0"].tap()
        app.buttons["="].tap()
    }
    
    func testAdditionOperations() {
        app.buttons["1"].tap()
        app.buttons["+"].tap()
        app.buttons["2"].tap()
        app.buttons["+"].tap()
        app.buttons["3"].tap()
        app.buttons["+"].tap()
    }
    
    func testSubtractionOperations() {
        app.buttons["3"].tap()
        app.buttons["-"].tap()
        app.buttons["2"].tap()
        app.buttons["-"].tap()
        app.staticTexts["1"].tap()
        app.buttons["-"].tap()
    }
    
    func testMultiplicationOpeartions() {
        app.buttons["6"].tap()
        app.buttons["✕"].tap()
        app.buttons["5"].tap()
        app.buttons["✕"].tap()
        app.staticTexts["4"].tap()
        app.buttons["✕"].tap()
    }
    
    func testDivisionOpeartions() {
        app.buttons["9"].tap()
        app.buttons["÷"].tap()
        app.buttons["8"].tap()
        app.buttons["÷"].tap()
        app.staticTexts["7"].tap()
        app.buttons["÷"].tap()
    }
    
    func testRedundantZeros() {
        app.buttons["0"].tap()
        app.buttons["0"].tap()
        app.buttons["0"].tap()
    }
}
