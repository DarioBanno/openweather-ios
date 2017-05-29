//
//  WindTests.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import XCTest
@testable import OpenWeather

class WindTests: XCTestCase {
    
    func test_invalid_json_population() {
        // GIVEN I have an invalid json
        let jsonObject = ["ciao": "bella"]
        
        // WHEN I populate a wind object from json
        let wind = Wind(json: jsonObject)
        
        // THEN I can see object is nil
        XCTAssertNil(wind)
    }
    
    func test_valid_json_population() {
        // GIVEN I have a json object for wind
        let jsonObject = json(forFile: "wind.json")!
        
        // WHEN I populate a wind object from json
        let wind = Wind(json: jsonObject)
        
        // THEN I can see object is not nil
        XCTAssertNotNil(wind)
        
        // AND I can see all fields are properly populated
        XCTAssertEqual(wind?.speed, 3.46)
        XCTAssertEqual(wind?.degrees, 85.5016)
    }
    
}
