//
//  WeatherTests.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import XCTest
@testable import OpenWeather

class WeatherTests: XCTestCase {
    
    func test_invalid_json_population() {
        // GIVEN I have an invalid json
        let jsonObject = ["ciao": "bella"]
        
        // WHEN I populate a weather object from json
        let weather = Weather(json: jsonObject)
        
        // THEN I can see object is nil
        XCTAssertNil(weather)
    }
    
    
    func test_valid_json_population_from_weather() {
        // GIVEN I have a json object for weather
        let jsonObject = json(forFile: "weather.json")!
        
        // WHEN I populate a weather object from json
        let weather = Weather(json: jsonObject)
        
        // THEN I can see object is not nil
        XCTAssertNotNil(weather)
        
        // AND I can see all fields are properly populated
        XCTAssertEqual(weather?.code, 803)
        XCTAssertEqual(weather?.condition, "Clouds")
        XCTAssertEqual(weather?.humidity, 78)
        XCTAssertEqual(weather?.temperature, 287.11)
        XCTAssertEqual(weather?.temperatureMin, 287.11)
        XCTAssertEqual(weather?.temperatureMax, 289.755)
        XCTAssertEqual(weather?.timestamp, 1496026800)
        XCTAssertEqual(weather?.wind.speed, 3.46)
        XCTAssertEqual(weather?.wind.degrees, 85.5016)
    }
    
    func test_valid_json_population_from_station() {
        // GIVEN I have a json object for weather
        let jsonObject = json(forFile: "station.json")!
        
        // WHEN I populate a weather object from json
        let weather = Weather(json: jsonObject)
        
        // THEN I can see object is not nil
        XCTAssertNotNil(weather)
        
        // AND I can see all fields are properly populated
        XCTAssertEqual(weather?.code, 701)
        XCTAssertEqual(weather?.condition, "Mist")
        XCTAssertEqual(weather?.humidity, 82)
        XCTAssertEqual(weather?.temperature, 291.47)
        XCTAssertEqual(weather?.temperatureMin, 289.15)
        XCTAssertEqual(weather?.temperatureMax, 293.15)
        XCTAssertEqual(weather?.timestamp, 1496074800)
        XCTAssertEqual(weather?.wind.speed, 5.7)
        XCTAssertEqual(weather?.wind.degrees, 200)
    }
    
}
