//
//  TranslationProxy.swift
//
//
//  Created by Asilbek Isakov on 11/01/24.
//

import Foundation
import UIKit

class DummyLocaleLoader: LocaleLoader {
    var locale: Locale = Language.english.locale
}

public class TranslationProxy {
    static var translationLoader: TranslationLoader = LocalTranslationLoader(localeLoader: DummyLocaleLoader())
    public static func setTranslationLoader(_ translationLoader: TranslationLoader) {
        self.translationLoader = translationLoader
    }
}
