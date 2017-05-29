//
//  ForecastService.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import Foundation

struct ForecastService: Service {
    
    let apiPath = ServiceConfiguration.forecastServicePath
    let httpClient: HTTPClient
    typealias ForecastServiceCompletion = (_ weather: WeatherForecast?, _ error: HTTPClientError?) -> ()

    init(httpClient: HTTPClient) {
        self.httpClient = httpClient
    }

    
    func fetch(name: String, completion: @escaping ForecastServiceCompletion) {
        fetch(query: apiQuery(name: name), completion: completion)
    }
    
    func fetch(id: Int, completion: @escaping ForecastServiceCompletion) {
        fetch(query: apiQuery(id: id), completion: completion)
    }

    
    // MARK: Convenience methods
    
    private func fetch(query: [String: Any], completion: @escaping ForecastServiceCompletion) {
        httpClient.requestJSON(method: .get, url: URL(string: apiPath.appendingUrlQuery(query))!) { (result: JSONObject?, error: HTTPClientError?) in
            completion(WeatherForecast(json: result), error)
        }
    }
    
}
