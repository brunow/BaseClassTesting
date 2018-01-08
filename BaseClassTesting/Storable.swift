//
//  UserDefaultsProtocol.swift
//  BaseClassTesting
//
//  Created by Bruno Wernimont on 8/01/18.
//  Copyright © 2018 brunow. All rights reserved.
//

import Foundation

protocol Storable {
    
    func removeObject(forKey defaultName: String)
    
    func object(forKey defaultName: String) -> Any?
    
    func set(_ value: Any?, forKey defaultName: String)
    
}

extension UserDefaults: Storable {  }
