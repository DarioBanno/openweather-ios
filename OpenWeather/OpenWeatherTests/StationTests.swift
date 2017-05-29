//
//  StationTests.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import XCTest
@testable import OpenWeather

class StationTests: XCTestCase {
    
    func test_invalid_json_population() {
        // GIVEN I have an invalid json
        let jsonObject = ["ciao": "bella"]
        
        // WHEN I populate a station object from json
        let station = Station(json: jsonObject)
        
        // THEN I can see object is nil
        XCTAssertNil(station)
    }
    
    func test_valid_json_population() {
        // GIVEN I have a json object for weather
        let jsonObject = json(forFile: "station.json")!
        
        // WHEN I populate a station object from json
        let station = Station(json: jsonObject)
        
        // THEN I can see object is not nil
        XCTAssertNotNil(station)
        
        // AND I can see all fields are properly populated
        XCTAssertEqual(station?.id, 2643743)
        XCTAssertEqual(station?.name, "London")
        XCTAssertEqual(station?.latitude, 51.51)
        XCTAssertEqual(station?.longitude, -0.13)
        XCTAssertEqual(station?.weather?.code, 701)
        XCTAssertEqual(station?.weather?.condition, "Mist")
        XCTAssertEqual(station?.weather?.humidity, 82)
        XCTAssertEqual(station?.weather?.temperature, 291.47)
        XCTAssertEqual(station?.weather?.temperatureMin, 289.15)
        XCTAssertEqual(station?.weather?.temperatureMax, 293.15)
        XCTAssertEqual(station?.weather?.timestamp, 1496074800)
        XCTAssertEqual(station?.weather?.wind.speed, 5.7)
        XCTAssertEqual(station?.weather?.wind.degrees, 200)

    }
    
}
