//
//  SettingsViewModelTests.swift
//  BaseClassTestingTests
//
//  Created by Bruno Wernimont on 8/01/18.
//  Copyright © 2018 brunow. All rights reserved.
//

import XCTest
@testable import BaseClassTesting

class MockUserDefaults: Storable {
    
    private var values: [String: Any?] = [:]
    
    func removeObject(forKey defaultName: String) {
        values[defaultName] = nil
    }
    
    func object(forKey defaultName: String) -> Any? {
        return values[defaultName] ?? nil
    }
    
    func set(_ value: Any?, forKey defaultName: String) {
        values[defaultName] = value
    }
    
}

class SettingsViewModelTests: XCTestCase {
    
    func testThatStoredValuesAreRead() {
        let expectedUsername = "Bruno"
        let storage = MockUserDefaults()
        storage.set(expectedUsername, forKey: "username")
        
        let vm = SettingsViewModel(storage: storage)
        XCTAssert(vm.username == expectedUsername)
    }
    
}
