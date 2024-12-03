//
//  SegmentedControl.swift
//
//
//  Created by Bilol Sanatillayev on 02/07/24.
//

import UIKit

public class SegmentedControl: UISegmentedControl {
    private let segmentInset: CGFloat = 7
    private let segmentImage: UIImage? = UIImage(color: UIColor.white)

    public override func layoutSubviews(){
        super.layoutSubviews()
        layer.cornerRadius = 12
        let foregroundIndex = numberOfSegments
        if subviews.indices.contains(foregroundIndex), let foregroundImageView = subviews[foregroundIndex] as? UIImageView
        {
            foregroundImageView.bounds = foregroundImageView.bounds.insetBy(dx: segmentInset, dy: segmentInset)
            foregroundImageView.image = segmentImage
            foregroundImageView.layer.removeAnimation(forKey: "SelectionBounds")
            foregroundImageView.layer.masksToBounds = true
            foregroundImageView.layer.cornerRadius = 8
        }
        let font: [AnyHashable : Any] = [NSAttributedString.Key.font : UIFont.appRegular(at: 14)]
        setTitleTextAttributes(font as? [NSAttributedString.Key : AnyObject], for: .normal)
    }
}

extension UIImage{
    
    public convenience init?(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
    
        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }
}
