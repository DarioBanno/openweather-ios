//
//  WeatherService.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import Foundation

struct WeatherService: Service {
    
    let apiPath = ServiceConfiguration.weatherServicePath
    let httpClient: HTTPClient
    typealias WeatherServiceCompletion = (_ station: Station?, _ error: HTTPClientError?) -> ()

    init(httpClient: HTTPClient) {
        self.httpClient = httpClient
    }

    
    func fetch(name: String, completion: @escaping WeatherServiceCompletion) {
        fetch(query: apiQuery(name: name), completion: completion)
    }
    
    func fetch(id: Int, completion: @escaping WeatherServiceCompletion) {
        fetch(query: apiQuery(id: id), completion: completion)
    }
    
    
    // MARK: Convenience methods
    
    private func fetch(query: [String: Any], completion: @escaping WeatherServiceCompletion) {
        httpClient.requestJSON(method: .get, url: URL(string: apiPath.appendingUrlQuery(query))!) { (result: JSONObject?, error: HTTPClientError?) in
            completion(Station(json: result), error)
        }
    }

}
