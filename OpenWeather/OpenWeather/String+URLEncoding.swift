//
//  String+URLEncoding.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import Foundation

extension String {

    /// Percent escapes values to be added to a URL query as specified in RFC 3986
    ///
    /// This percent-escapes all characters besides the alphanumeric character set and "-", ".", "_", and "~".
    ///
    /// - returns: Returns percent-escaped string.
    ///
    /// http://www.ietf.org/rfc/rfc3986.txt
    /// Inspired by: http://stackoverflow.com/questions/27723912/swift-get-request-with-parameters
    
    func percentEncode() -> String {
        let allowedCharacters = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~")
        return addingPercentEncoding(withAllowedCharacters: allowedCharacters) ?? ""
    }
    

    /// Append a URL Query with parameters coming from a dictionary
    ///
    /// - returns: Returns a percent-escaped string with the query appended following the format specified in RFC3986.
    
    func appendingUrlQuery(_ dictionary: [String: Any]) -> String {
        guard dictionary.count > 0 else {
            return self
        }
        
        var appendingCharacter = "?"
        if contains(appendingCharacter) {
            appendingCharacter = "&"
        }
        
        return self + appendingCharacter + dictionary.urlQueryString()
    }

}
