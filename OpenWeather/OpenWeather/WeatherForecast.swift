//
//  WeatherForecast.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import Foundation

struct WeatherForecast {
    
    var station: Station
    var weatherList: [Weather]
    
}


extension WeatherForecast: JSONSerializable {
    
    init?(json: JSONObject?) {
        guard let station = Station(json: json?["city"] as? JSONObject),
            let weatherList = [Weather](jsonArray: json?["list"] as? [JSONObject])
            else {
                return nil
        }
        
        self.station = station
        self.weatherList = weatherList
    }
    
}
