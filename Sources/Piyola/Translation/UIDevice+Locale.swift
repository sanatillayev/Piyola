//
//  File.swift
//  
//
//  Created by Asilbek Isakov on 6/7/24.
//

import UIKit

public extension UIDevice {
    var locale: Locale {
        TranslationProxy.translationLoader.locale
    }
}


