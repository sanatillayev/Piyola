//
//  RectIconView.swift
//  LamenuUI
//
//  Created by Asilbek Isakov on 04/01/24.
//

import UIKit

final public class RectIconView: UIView {
    public override var intrinsicContentSize: CGSize {
        .init(width: 58, height: 58)
    }
    private let backgroundImageView = UIImageView()
    private let iconImageView = UIImageView()

    public var image: UIImage? {
        get { iconImageView.image }
        set { iconImageView.image = newValue }
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(backgroundImageView)
        addSubview(iconImageView)
        backgroundImageView.frame = CGRect(origin: .zero, size: intrinsicContentSize)
        backgroundImageView.image = UIImage.resizable()
            .corner(radius: 12)
            .color(Colors.gray100.color)
            .image
        iconImageView.frame = CGRect(origin: .zero, size: CGSize(width: 24, height: 24))
    }

    public override func layoutSubviews() {
        super.layoutSubviews()
        iconImageView.center = backgroundImageView.center
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
