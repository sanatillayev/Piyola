//
//  LocalTranslationLoader.swift
//
//
//  Created by Asilbek Isakov on 11/01/24.
//

import Foundation

public class LocalTranslationLoader: TranslationLoader {

    public private(set) var locale: Locale

    public var languages: [Language] {
        [.english, .russian, .uzbek]
    }

    private let localeLoader: LocaleLoader

    public init(localeLoader: LocaleLoader) {
        self.localeLoader = localeLoader
        locale = localeLoader.locale
    }

    public func setLocale(_ locale: Locale) {
        self.locale = locale
        localeLoader.locale = locale
        NotificationCenter.default.post(name: .appLocaleDidChange, object: nil)
    }

    private func bundle(for locale: Locale) -> Bundle {
        let bundle = Bundle.module
        let path = bundle.path(forResource: locale.identifier, ofType: "lproj")
        return path.flatMap { Bundle.init(path: $0) } ?? bundle
    }

    public func translate(_ key: String, _ table: String, _ value: String) -> String {
        let bundle = bundle(for: locale)
        return bundle.localizedString(forKey: key, value: value, table: table)
    }
}
