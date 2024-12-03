//
//  Language.swift
//
//
//  Created by Asilbek Isakov on 11/01/24.
//

import Foundation

public struct Language {
    public let locale: Locale
    public let name: String
    public let enName: String

    public static let english = Language(locale: Locale(identifier: "en"), name: "English", enName: "English")
    public static let russian = Language(locale: Locale(identifier: "ru"), name: "Русский", enName: "Russian")
    public static let uzbek = Language(locale: Locale(identifier: "uz"), name: "O‘zbek", enName: "Uzbek")
}
