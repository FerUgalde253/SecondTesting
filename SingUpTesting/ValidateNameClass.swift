//
//  ValidateNameClass.swift
//  SingUpTesting
//
//  Created by Fernando Ugalde on 19/10/23.
//

import Foundation

class ValidateNameClass{
    
    func ValidationName(name: String) -> Bool {
        var returnValue: Bool = true
        if name.count < 3 || name.count > 10 {
            returnValue = false
        }
        return returnValue
    }
    
    func ValidatePassword(password1: String, password2: String) -> Bool {
        var returnValue: Bool = false
        if password1 == password2 {
            returnValue = true
        }
        return returnValue
    }
}
