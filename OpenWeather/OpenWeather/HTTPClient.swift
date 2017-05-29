//
//  HTTPClient.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import Foundation

enum HTTPRequestMethod: String {
    case get
    case put
    case delete
    case post
}

enum HTTPClientError: Error {
    case invalidRequestJSON
    case invalidResponseJSON
    case invalidStatusCode(Int)
    case unexpectedResponseNoData
    case unexpectedResponse(error: Error)
}


class HTTPClient {
    let urlSession: URLSession
    
    init(urlSession: URLSession) {
        self.urlSession = urlSession
    }
    
    func requestData(method: HTTPRequestMethod, url: URL, headers: [String: String] = [:], body: Data? = nil, completion: @escaping (_ result: Data?, _ error: HTTPClientError?) -> ()) {

        func dispatchCompletion(_ result: Data?, _ error: HTTPClientError?) {
            DispatchQueue.main.async { completion(result, error) }
        }
        
        Logger.print("")
        Logger.print(">>>>>>>>>> REQUEST")
        Logger.print("")
        Logger.print("method: " + method.rawValue.uppercased())
        Logger.print("url: \(url)")
        Logger.print("headers: \(headers)")
        Logger.print("body: \(String(describing: body))")
        Logger.print("")

        // Build request
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue
        
        // Attach headers
        for header in headers {
            urlRequest.setValue(header.value, forHTTPHeaderField: header.key)
        }
        
        // Attach body
        if let body = body {
            urlRequest.httpBody = body
        }
        
        // Send request
        urlSession.dataTask(with: urlRequest) {
            (data: Data?, response: URLResponse?, error: Error?) in
            
            Logger.print("")
            Logger.print("<<<<<<<<<< RESPONSE")
            Logger.print("")
            Logger.print("\(String(describing: response))")
            
            var clientError: HTTPClientError?

            // Check for error
            if error != nil {
                Logger.print("-- Response error: \(String(describing: error))")
                clientError = .unexpectedResponse(error: error!)
            } else if let statusCode = (response as? HTTPURLResponse)?.statusCode, statusCode != 200 {
                // Status code needs to be 200
                Logger.print("-- Invalid Status Code: \(statusCode)")
                clientError = .invalidStatusCode(statusCode)
            } else if data == nil {
                // Data is always expected (can be empty)
                Logger.print("-- Error: No data.")
                clientError = .unexpectedResponseNoData
            }
            
            if let data = data, data.count > 0, let dataString = String(data: data, encoding: .utf8) {
                // Print content
                Logger.print("Content: \(dataString)")
            } else {
                // We are cool with data with no content (this is not an error).
                Logger.print("-- No content.")
            }
            Logger.print("")

            dispatchCompletion(data, clientError)
        }.resume()
    }
    
}
