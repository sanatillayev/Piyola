//
//  IconLabel.swift
//  Lamenu
//
//  Created by Asilbek Isakov on 30/11/23.
//

import UIKit
import SnapKit

public final class IconLabel: UIStackView {

    private let imageView = UIImageView()
    private let label = UILabel(typography: .body3, color: Colors.red.color)

    public var text: String? {
        get { label.text }
        set { label.text = newValue }
    }

    public init() {
        super.init(frame: .zero)
        alignment = .center
        addArrangedSubview(imageView)
        addArrangedSubview(label)
        imageView.snp.makeConstraints { make in
            make.size.equalTo(24)
        }
        spacing = 8
        imageView.image = Images.warning.image
        label.textAlignment = .left
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
