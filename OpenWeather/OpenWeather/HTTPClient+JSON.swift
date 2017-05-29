//
//  HTTPClient+JSON.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import Foundation

/// Extension for JSON

extension HTTPClient {
    
    /// JSON Request
    ///
    /// Send a request with a JSON body (optional)
    ///
    /// Parameters:
    /// - method: the http method for the request
    /// - path: the URL path for the request
    /// - headers: (optional) headers to include in the request
    /// - body: (optional) a JSON formatted body for the request
    /// - completion: completion block returning a JSON Object and error if any
    
    func requestJSON<T>(method: HTTPRequestMethod, url: URL, headers: [String:String] = [:], body: JSONObject? = nil, completion: @escaping (_ result: T?, _ error: HTTPClientError?) -> ()) {
        
        // Attach JSON body
        var jsonBody: Data? = nil
        if let body = body {
            guard JSONSerialization.isValidJSONObject(body),
                let jsonData = try? JSONSerialization.data(withJSONObject: body, options: [])
                else {
                    Logger.print("-- Error: unable to generate JSON data from body \(body).")
                    completion(nil, .invalidRequestJSON)
                    return
            }
            jsonBody = jsonData
        }
        
        // Append Content-Type header
        var headers = headers
        headers["Content-Type"] = "application/json"
        
        // Send request
        requestData(method: method, url: url, headers: headers, body: jsonBody) { (data: Data?, error: HTTPClientError?) in
            
            // Check data and propagate error if any
            guard let data = data, data.count > 0 else {
                Logger.print("-- Empty response.")
                completion(nil, error)
                return
            }
            
            // Check if response is serializable
            guard let jsonObject = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? T else {
                Logger.print("-- Error: Malformed JSON.")
                completion(nil, .invalidResponseJSON)
                return
            }
            
            completion(jsonObject, error)
        }
    }
    
}
