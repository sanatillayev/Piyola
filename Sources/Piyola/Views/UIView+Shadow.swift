//
//  File.swift
//  
//
//  Created by Bilol Sanatillayev on 23/09/24.
//

import UIKit

extension UIView {
    public func addShadow(color: UIColor = Colors.gray200.color, opacity: Float = 0.65, radius: CGFloat = 20) {
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = CGSize(width: 0, height: 8)
        layer.shadowRadius = radius
        layer.masksToBounds = false
    }
}
