//
//  WeatherForecastTests.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import XCTest
@testable import OpenWeather

class WeatherForecastTests: XCTestCase {
    
    func test_invalid_json_population() {
        // GIVEN I have an invalid json
        let jsonObject = ["ciao": "bella"]
        
        // WHEN I populate a forecast object from json
        let forecast = WeatherForecast(json: jsonObject)
        
        // THEN I can see object is nil
        XCTAssertNil(forecast)
    }
    
    func test_valid_json_population() {
        // GIVEN I have a json object for weather
        let jsonObject = json(forFile: "forecast.json")!
        
        // WHEN I populate a weather object from json
        let forecast = WeatherForecast(json: jsonObject)
        
        // THEN I can see object is not nil
        XCTAssertNotNil(forecast)
        
        // AND I can see all fields are properly populated
        XCTAssertEqual(forecast?.station.id, 2643743)
        XCTAssertEqual(forecast?.station.name, "London")
        XCTAssertEqual(forecast?.station.country, "GB")
        XCTAssertEqual(forecast?.weatherList.count, 2)
        
        XCTAssertEqual(forecast?.weatherList[0].code, 802)
        XCTAssertEqual(forecast?.weatherList[0].description, "Clouds")
        XCTAssertEqual(forecast?.weatherList[0].humidity, 62)
        XCTAssertEqual(forecast?.weatherList[0].temperature, 293.81)
        XCTAssertEqual(forecast?.weatherList[0].temperatureMin, 293.81)
        XCTAssertEqual(forecast?.weatherList[0].temperatureMax, 295.409)
        XCTAssertEqual(forecast?.weatherList[0].timestamp, 1496070000)
        XCTAssertEqual(forecast?.weatherList[0].wind.speed, 5.47)
        XCTAssertEqual(forecast?.weatherList[0].wind.degrees, 241.503)
        
        XCTAssertEqual(forecast?.weatherList[1].code, 800)
        XCTAssertEqual(forecast?.weatherList[1].description, "Clear")
        XCTAssertEqual(forecast?.weatherList[1].humidity, 75)
        XCTAssertEqual(forecast?.weatherList[1].temperature, 286.917)
        XCTAssertEqual(forecast?.weatherList[1].temperatureMin, 286.917)
        XCTAssertEqual(forecast?.weatherList[1].temperatureMax, 286.917)
        XCTAssertEqual(forecast?.weatherList[1].timestamp, 1496124000)
        XCTAssertEqual(forecast?.weatherList[1].wind.speed, 3.46)
        XCTAssertEqual(forecast?.weatherList[1].wind.degrees, 257.501)
    }
    
}
