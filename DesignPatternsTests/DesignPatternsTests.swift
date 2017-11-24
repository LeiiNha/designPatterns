//
//  DesignPatternsTests.swift
//  DesignPatternsTests
//
//  Created by Erica Geraldes on 13/11/2017.
//  Copyright © 2017 Erica Geraldes. All rights reserved.
//


import XCTest
import Mockingjay
import SwiftyJSON
@testable import DesignPatterns

class DesignPatternsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        /*
         var avatarURL: NSURL?
         var id: String?
         var aboutMe: String?
         var age: UInt?
         var distanceKM: Double?
         var instagramUsername: String?
         */
        let serverErrorStub = http(500, headers: nil, download: Download(nilLiteral: ()))
        
        let notFoundStub = http(404, headers: nil, download: Download(nilLiteral: ()))
        
 
        let userData = ["avatarURL":"teste",
                             "id":"5744b138f64cf2021002fa76",
                             "aboutMe": "meldels",
                             "age": 433,
                             "distanceKM": 232.2,
                             "instagramUsername": "inst"] as [String : Any]
        
        MockingjayProtocol.addStub(matcher: http(.get, uri: "http://localhost:9000/api/user/5744b138f64cf2021002fa76"), builder: json(userData))
        
        MockingjayProtocol.addStub(matcher: http(.get, uri: "http://localhost:9000/api/user/thisWillNeverBeAUserId"), builder: notFoundStub)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
    }
    
    func testFetchExistingUserUser() {
        
        let fetchExistingUserExpectation = expectation(description: "fetch existing user")
        
        UserEntity.requestUser(userId: "5744b138f64cf2021002fa76", accessToken: "fakeAccessToken") { result,user  in
            
            print(user ?? "nao ha")
            XCTAssertTrue(result)
            XCTAssertNotNil(user)
            
            fetchExistingUserExpectation.fulfill()
        }
        
        waitForExpectations(timeout: 45, handler: nil)
    }
    
    func testNonexistentUser() {
        
        let fetchUserExpectation = expectation(description: "fetch nonexistent user")
        
        UserEntity.requestUser(userId: "thisWillNeverBeAUserId", accessToken: "fakeAccessToken") { result,user in
            print(user ?? "nao ha")
            XCTAssertFalse(result)
            
            fetchUserExpectation.fulfill()
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
