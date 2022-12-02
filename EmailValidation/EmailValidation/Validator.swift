//
//  Validator.swift
//  EmailValidation
//
//  Created by Softsuave on 02/12/2022.
//

import Foundation

public struct Validator {
    public static func emailValidation(email: String) -> (empty: Bool, validEmail: Bool) {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return(empty: emailIsEmpty(email: email), validEmail: emailTest.evaluate(with: email))
    }
    
    static func emailIsEmpty(email: String) -> Bool {
        return (email == ""  || email.trimmingCharacters(in: .whitespacesAndNewlines) == "")
    }
}

