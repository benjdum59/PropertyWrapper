//
//  PropertyWrapers.swift
//  PropertyWrapper
//
//  Created by Benjamin DUMONT on 22/03/2022.
//

import Foundation

@propertyWrapper
struct MainThread<T> /* Generic for all kind of data, not only strings*/{
    var closure: ((T) -> Void)?
    
    var wrappedValue: ((_ data: T) -> Void)? {
        get {
            { data in
                DispatchQueue.main.async {
                    closure?(data)
                }
                
            }
        }
        set {
            closure = newValue
        }
    }
}
