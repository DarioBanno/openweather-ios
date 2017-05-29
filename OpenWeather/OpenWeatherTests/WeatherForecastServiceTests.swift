//
//  WeatherForecastServiceTests.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import XCTest
@testable import OpenWeather

class WeatherForecastServiceTests: XCTestCase {
    
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
        let someJSON = json(forFile: "forecast.json")!
        mockURLSession.responseData = try! JSONSerialization.data(withJSONObject: someJSON, options: .prettyPrinted)
        mockURLSession.responseError = nil

        // AND I have a service with a mocked HTTP Client
        let service = WeatherForecastService(httpClient: httpClient)
        
        // WHEN I send a service request
        let asyncExpectation = expectation(description: #function)
        var responseForecast: WeatherForecast?
        var responseError: HTTPClientError?
        service.fetch(id: 2643743) { (weatherForecast: WeatherForecast?, error: HTTPClientError?) in
            responseForecast = weatherForecast
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
        XCTAssertNotNil(responseForecast)
        
        // AND response object is correctly populated
        XCTAssertEqual(responseForecast?.station.id, 2643743)
        XCTAssertEqual(responseForecast?.station.name, "London")
        XCTAssertEqual(responseForecast?.station.country, "GB")
        XCTAssertEqual(responseForecast?.weatherList.count, 2)
    }
    
    func test_fetch_by_name_succeeds() {
        // GIVEN I have an HTTP Client with a mocked response
        // (see setup)
        
        // AND I mock the response to return data and no error
        let someJSON = json(forFile: "forecast.json")!
        mockURLSession.responseData = try! JSONSerialization.data(withJSONObject: someJSON, options: .prettyPrinted)
        mockURLSession.responseError = nil
        
        // AND I have a service with a mocked HTTP Client
        let service = WeatherForecastService(httpClient: httpClient)
        
        // WHEN I send a service request
        let asyncExpectation = expectation(description: #function)
        var responseForecast: WeatherForecast?
        var responseError: HTTPClientError?
        service.fetch(name: "London") { (weatherForecast: WeatherForecast?, error: HTTPClientError?) in
            responseForecast = weatherForecast
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
        XCTAssertNotNil(responseForecast)
        
        // AND response object is correctly populated
        XCTAssertEqual(responseForecast?.station.id, 2643743)
        XCTAssertEqual(responseForecast?.station.name, "London")
        XCTAssertEqual(responseForecast?.station.country, "GB")
        XCTAssertEqual(responseForecast?.weatherList.count, 2)
    }
    
}
