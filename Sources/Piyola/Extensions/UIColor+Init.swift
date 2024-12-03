//
//  UIColor+Init.swift
//
//
//  Created by Asilbek Isakov on 29/6/24.
//

import UIKit

public extension UIColor {
    /// Initialize a UIColor object with a hexadecimal string.
    ///
    /// - Parameter hex: A string representing the hex color code (e.g., "#RRGGBB" or "RRGGBB").
    /// - Returns: A UIColor object, or nil if the hex string is invalid.
    convenience init?(hex: String) {
        var hexString = hex.hasPrefix("#") ? String(hex.dropFirst()) : hex
        guard hexString.count == 6 || hexString.count == 8 else { return nil }
        if hexString.count == 6 {
            hexString.append("FF")
        }
        var hexNumber: UInt64 = 0
        guard Scanner(string: hexString).scanHexInt64(&hexNumber) else { return nil }
        
        let red = CGFloat((hexNumber & 0xFF000000) >> 24) / 255.0
        let green = CGFloat((hexNumber & 0x00FF0000) >> 16) / 255.0
        let blue = CGFloat((hexNumber & 0x0000FF00) >> 8) / 255.0
        let alpha = CGFloat(hexNumber & 0x000000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}
