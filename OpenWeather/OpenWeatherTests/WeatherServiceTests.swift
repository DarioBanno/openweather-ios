//
//  WeatherServiceTests.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import XCTest
@testable import OpenWeather

class WeatherServiceTests: XCTestCase {
    
    var httpClient: HTTPClient!
    var mockURLSession: MockURLSession!
    
    
    override func setUp() {
        super.setUp()
        
        mockURLSession = MockURLSession()
        httpClient = HTTPClient(urlSession: mockURLSession)
    }
    
    func test_fetch_by_id_succeeds() {
        // GIVEN I have an HTTP Client with a mocked response
        // (see setup)
        
        // AND I mock the response to return data and no error
        let someJSON = json(forFile: "station.json")!
        mockURLSession.responseData = try! JSONSerialization.data(withJSONObject: someJSON, options: .prettyPrinted)
        mockURLSession.responseError = nil
        
        // AND I have a service with a mocked HTTP Client
        let service = WeatherService(httpClient: httpClient)
        
        // WHEN I send a service request
        let asyncExpectation = expectation(description: #function)
        var responseStation: Station?
        var responseError: HTTPClientError?
        service.fetch(id: 2643743) { (station: Station?, error: HTTPClientError?) in
            responseStation = station
            responseError = error
            asyncExpectation.fulfill()
        }
        
        // THEN I should get a response within 2 seconds
        waitForExpectations(timeout: 2) { (error) in
            XCTAssertNil(error)
        }
        
        // AND response error should be nil
        XCTAssertNil(responseError)
        
        // AND response object should not be nil
        XCTAssertNotNil(responseStation)
        
        // AND response object is correctly populated
        XCTAssertEqual(responseStation?.id, 2643743)
        XCTAssertEqual(responseStation?.name, "London")
        XCTAssertEqual(responseStation?.country, "GB")
        XCTAssertEqual(responseStation?.latitude, 51.51)
        XCTAssertEqual(responseStation?.longitude, -0.13)
    }
    
    func test_fetch_by_name_succeeds() {
        // GIVEN I have an HTTP Client with a mocked response
        // (see setup)
        
        // AND I mock the response to return data and no error
        let someJSON = json(forFile: "station.json")!
        mockURLSession.responseData = try! JSONSerialization.data(withJSONObject: someJSON, options: .prettyPrinted)
        mockURLSession.responseError = nil
        
        // AND I have a service with a mocked HTTP Client
        let service = WeatherService(httpClient: httpClient)
        
        // WHEN I send a service request
        let asyncExpectation = expectation(description: #function)
        var responseStation: Station?
        var responseError: HTTPClientError?
        service.fetch(name: "London, GB") { (station: Station?, error: HTTPClientError?) in
            responseStation = station
            responseError = error
            asyncExpectation.fulfill()
        }
        
        // THEN I should get a response within 2 seconds
        waitForExpectations(timeout: 2) { (error) in
            XCTAssertNil(error)
        }
        
        // AND response error should be nil
        XCTAssertNil(responseError)
        
        // AND response object should not be nil
        XCTAssertNotNil(responseStation)
        
        // AND response object is correctly populated
        XCTAssertEqual(responseStation?.id, 2643743)
        XCTAssertEqual(responseStation?.name, "London")
        XCTAssertEqual(responseStation?.country, "GB")
        XCTAssertEqual(responseStation?.latitude, 51.51)
        XCTAssertEqual(responseStation?.longitude, -0.13)
    }
    
}
