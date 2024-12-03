//
//  String+PhoneMask.swift
//  Lamenu
//
//  Created by Asilbek Isakov on 26/11/23.
//

import Foundation

extension String {

    public var onlyNumber: String {
        components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
    }

    public var maskUzShort: String {
        return masked(with: "## ### ## ##")
    }
    
    public var maskUzFull: String {
        return masked(with: "+### ## ### ## ##")
    }

    func masked(with mask: String) -> String {
        let cleanPhoneNumber = onlyNumber
        var result = ""
        var index = cleanPhoneNumber.startIndex
        for ch in mask where index < cleanPhoneNumber.endIndex {
            if ch == "#" {
                result.append(cleanPhoneNumber[index])
                index = cleanPhoneNumber.index(after: index)
            } else {
                result.append(ch)
            }
        }
        return result
    }

    public func splitFullName() -> (name: String, lastName: String) {
        let components = self.components(separatedBy: " ")
        guard components.count >= 2 else {
            return (self, "")
        }
        
        let name = components[0]
        let lastName = components[1..<components.count].joined(separator: " ")
        return (name, lastName)
    }
}


