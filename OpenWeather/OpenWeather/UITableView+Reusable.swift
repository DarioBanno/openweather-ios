//
//  UITableView+Reusable.swift
//  OpenWeather
//
//  Created by Dario Banno on 29/05/2017.
//  Copyright © 2017 AppTown. All rights reserved.
//

import UIKit

extension UITableView {
    
    enum RegisterSource {
        case `class`
        case nib
    }
    
    func registerReusable(class viewClass: AnyClass, from source: RegisterSource = .class) {
        let identifier = reuseIdentifier(viewClass: viewClass.self)
        
        switch source {
        case .class:
            self.register(viewClass, forCellReuseIdentifier: identifier)
        case .nib:
            let nib = UINib(nibName: String(describing: viewClass), bundle: nil)
            self.register(nib, forCellReuseIdentifier: identifier)
        }
    }
    
    func dequeueReusable<T: Any>(for indexPath: IndexPath) -> T? {
        let identifier = reuseIdentifier(viewClass: T.self)
        return dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? T
    }
    
    fileprivate func reuseIdentifier(viewClass: Any) -> String {
        return String(describing: viewClass)
    }
}
