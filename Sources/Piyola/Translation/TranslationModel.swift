//
//  TranslationModel.swift
//
//
//  Created by Asilbek Isakov on 6/7/24.
//

import Foundation

public struct TranslationModel: Hashable {
    public let uz: String
    public let ru: String
    public let en: String
    
    public init(uz: String, ru: String, en: String) {
        self.uz = uz
        self.ru = ru
        self.en = en
    }
}

public extension TranslationModel {
    var localeValue: String {
        switch TranslationProxy.translationLoader.locale {
        case Language.uzbek.locale:
            return uz
        case Language.russian.locale:
            return ru
        case Language.english.locale:
            return en
        default: return ""
        }
    }
}

//extension TranslationModel: Hashable {}
