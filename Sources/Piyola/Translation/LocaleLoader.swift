//
//  LocaleLoader.swift
//
//
//  Created by Asilbek Isakov on 11/01/24.
//

import Foundation

public protocol LocaleLoader: AnyObject {
    var locale: Locale { get set }
}
