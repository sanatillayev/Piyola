//
//  UIFont+App.swift
//  Lamenu
//
//  Created by Asylbek Isakov on 28/10/23.
//

import UIKit
import CoreText

public extension UIFont {

    static func appMedium(at size: CGFloat) -> UIFont {
        return appFont(name: "GolosText-Medium", size: size) ?? UIFont.systemFont(ofSize: size)
    }

    static func appSemiBold(at size: CGFloat) -> UIFont {
        return appFont(name: "GolosText-SemiBold", size: size) ?? UIFont.boldSystemFont(ofSize: size)
    }

    static func appRegular(at size: CGFloat) -> UIFont {
        return appFont(name: "GolosText-Regular", size: size) ?? UIFont.systemFont(ofSize: size)
    }

    private static func appFont(name: String, size: CGFloat) -> UIFont? {
        guard let font = UIFont(name: name, size: size) else {
            assertionFailure("Error getting correct font")
            return nil
//            return UIFont.systemFont(ofSize: size)
        }
        return font
    }
}

extension UIFont {
    public static func registerFonts() {
        let bundle = Bundle.module
        let fontURLs = bundle.urls(forResourcesWithExtension: "ttf", subdirectory: nil) ?? []
        for url in fontURLs {
            CTFontManagerRegisterFontsForURL(url as CFURL, CTFontManagerScope.process, nil)
        }
    }
}
