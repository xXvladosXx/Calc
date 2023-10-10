//
//  CalcTests.swift
//  CalcTests
//
//  Created by student on 03/10/2023.
//

import XCTest
@testable import Calc

final class CalcTests: XCTestCase {

    func testPositiveScenarioForAddCalculation()
    {
        XCTAssertEqual(Calculations().addTwoNumbers(of: 10, with: 21), 31)
    }
    
    func testNegativeScenarioForAddCalculation(){
        let result = Calculations().addTwoNumbers(of: -5, with: -3)
        XCTAssertEqual(result, -8.0, "Result should be -8.0 when adding negative numbers")
    }
    
    func testPositiveScenarioForSubCalculation(){
        XCTAssertEqual(Calculations().substactTwoNumbers(of: 100, with: 10), 90)
    }
    
    func testNegativeScenarioForSubCalculation(){
        let result = Calculations().substactTwoNumbers(of: 3, with: 5)
        XCTAssertEqual(result, -2.0, "Result should be -2.0 when secondVal is greater than firstVal")
    }
    
    func testPositiveScenarioForProdCalculation(){
        XCTAssertEqual(Calculations().multiplyTwoNumbers(of: 100, with: 1), 100)
    }
    
    func testNegativeScenarioForProdCalculation(){
        let result1 = Calculations().multiplyTwoNumbers(of: 0, with: 10)
        XCTAssertEqual(result1, 0.0, "Multiplying by zero should result in zero")
                
        let result2 = Calculations().multiplyTwoNumbers(of: 5, with: 0)
        XCTAssertEqual(result2, 0.0, "Multiplying by zero should result in zero")
    }
    
    func testPositiveScenarioForDivCalculation(){
        XCTAssertEqual(Calculations().divisionTwoNumbers(of: 100, with: 1), 100)
    }
    
    func testZeroScenarioForDivCalculation(){
        XCTAssertNil(Calculations().divisionTwoNumbers(of: 100, with: 0), "Cant divide")
    }
    
    func testPositiveScenarioForSinCalculation(){
        XCTAssertEqual(Calculations().Sin(of: 90), 1)
    }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
