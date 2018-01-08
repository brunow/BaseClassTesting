//
//  SettingsViewModel.swift
//  BaseClassTesting
//
//  Created by Bruno Wernimont on 8/01/18.
//  Copyright © 2018 brunow. All rights reserved.
//

import Foundation

class SettingsViewModel {
    
    var username: String? {
        get {
            return storage.object(forKey: "username") as? String
        }
        set {
            storage.set(newValue, forKey: "username")
        }
    }
    
    private let storage: Storable
    
    convenience init() {
        self.init(storage: UserDefaults.standard)
    }
    
    required init(storage: Storable) {
        self.storage = storage
    }
    
}
