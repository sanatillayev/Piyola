//
//  TranslationLoader.swift
//
//
//  Created by Asilbek Isakov on 11/01/24.
//

import Foundation

public protocol TranslationLoader: AnyObject {
    var locale: Locale { get }
    var languages: [Language] { get }
    func setLocale(_ locale: Locale)
    func translate(_ key: String, _ table: String, _ value: String) -> String
}
