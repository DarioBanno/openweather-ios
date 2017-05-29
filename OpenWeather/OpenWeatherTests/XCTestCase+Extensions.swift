//
//  XCTestCase+Extensions.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import XCTest
@testable import OpenWeather

extension XCTestCase {
    var currentBundle: Bundle { return Bundle(for: type(of: self)) }

    func json(forFile file: String) -> [String: AnyObject]? {
        guard let path = currentBundle.path(forResource: file, ofType: nil),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)),
            let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: AnyObject] else {
                return nil
        }
        return json
    }

}
