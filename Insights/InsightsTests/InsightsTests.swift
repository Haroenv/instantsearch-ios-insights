//
//  InsightsTests.swift
//  InsightsTests
//
//  Copyright © 2018 Algolia. All rights reserved.
//

import XCTest
@testable import Insights

class InsightsTests: XCTestCase {
  
  override func setUp() {
    super.setUp()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  func testInitShouldFails() {
    do {
      _ = try Insights.shared(index: "test")
    } catch let e {
      XCTAssertNotNil(e)
    }
  }
  
  func testInitShouldWork() {
    do {
      let indexName = "testIndex"
      
      let insightsRegister = Insights.register(appId: "testApp", apiKey: "testKey", indexName: indexName)
      XCTAssertNotNil(insightsRegister)
      
      let insightsShared = try Insights.shared(index: indexName)
      XCTAssertNotNil(insightsShared)
      
      XCTAssertEqual(insightsRegister, insightsShared, "Getting the Insights instance from register and shared should be the same")
    } catch _ {}
  }
  
  func testClickEvent() {
    let expectation = self.expectation(description: "Fuck me")
    
    let indexName = "testIndex"
    let insightsRegister = Insights.register(appId: "SPH6CBEPLC", apiKey: "064f4f03e7c37d8d7cfb40cdbf852f3d", indexName: indexName)
        
    insightsRegister.click(name: "My super event",
                           timestamp: Date.timeIntervalBetween1970AndReferenceDate,
                           userID: "user1",
                           indexNameOrQuery: IndexOrQuery(queryID: "a48a30e835094323b4cc101156f530bd",
                                                          position: 1),
                           objectIDsOrFilterValue: ObjectIDsOrFilterValue(filterValue: "filter"))
    DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
      expectation.fulfill()
    })
    waitForExpectations(timeout: 10, handler: nil)
    print("Done")
  }
  
  func testPerformanceExample() {
    // This is an example of a performance test case.
    self.measure {
      // Put the code you want to measure the time of here.
    }
  }
  
}
