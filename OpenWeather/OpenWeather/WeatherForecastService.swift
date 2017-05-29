//
//  WeatherForecastService.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import Foundation

struct WeatherForecastService: Service {
    
    let apiPath = ServiceConfiguration.forecastServicePath
    let httpClient: HTTPClient
    
    init(httpClient: HTTPClient) {
        self.httpClient = httpClient
    }

    typealias WeatherForecastCompletion = (_ weather: WeatherForecast?, _ error: HTTPClientError?) -> ()
    
    func fetch(name: String, completion: @escaping WeatherForecastCompletion) {
        fetch(query: makeQuery(name: name), completion: completion)
    }
    
    func fetch(id: Int, completion: @escaping WeatherForecastCompletion) {
        fetch(query: makeQuery(id: id), completion: completion)
    }

    
    // MARK: Convenience methods
    
    private func makeQuery(name: String? = nil, id: Int? = nil) -> [String: Any] {
        var dictionary: [String: Any] = ["APPID": ServiceConfiguration.apiKey]
        
        if let name = name { dictionary["q"] = name }
        if let id = id { dictionary["id"] = id }
        
        return dictionary
    }
    
    private func fetch(query: [String: Any], completion: @escaping WeatherForecastCompletion) {
        httpClient.requestJSON(method: .get, url: URL(string: apiPath.appendingUrlQuery(query))!) { (result: JSONObject?, error: HTTPClientError?) in
            completion(WeatherForecast(json: result), error)
        }
    }
    
}
