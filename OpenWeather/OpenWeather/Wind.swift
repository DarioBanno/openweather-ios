//
//  Wind.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import Foundation

struct Wind {

    var speed: Double
    var degrees: Double

}

/** From http://openweathermap.org/current#cities
 wind
 wind.speed Wind speed. Unit Default: meter/sec, Metric: meter/sec, Imperial: miles/hour.
 wind.deg Wind direction, degrees (meteorological)
 */

extension Wind: JSONSerializable {
    
    init?(json: JSONObject?) {
        guard let speed = json?["speed"] as? Double,
            let degrees = json?["deg"] as? Double
            else {
                return nil
        }
        
        self.speed = speed
        self.degrees = degrees
    }
    
}
