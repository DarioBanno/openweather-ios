//
//  WeatherIconsFontMapperTests.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import XCTest
@testable import OpenWeather

class WeatherIconsFontMapperTests: XCTestCase {
    
    func test_nonexisting_icon_returns_nil() {
        // GIVEN I have a non mappable id
        let id = "123456"
        
        // WHEN I retrieve the character for that id
        let iconString = WeatherIconsFontMapper.iconString(id: id)
        
        // THEN I should see that the retrieved string is nil
        XCTAssertNil(iconString)
    }
    
}
