//
//  UILabel+Typography.swift
//  Lamenu
//
//  Created by Asilbek Isakov on 03/12/23.
//

import UIKit

extension UILabel {
    public convenience init(typography: Typography, color: UIColor? = nil) {
        self.init(frame: .zero)
        font = typography.font
        textColor = color ?? typography.color
    }

    public func setupTypography(_ typography: Typography, color: UIColor? = nil) {
        font = typography.font
        textColor = color ?? typography.color
    }
}
