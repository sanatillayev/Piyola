//
//  Button.swift
//  Lamenu
//
//  Created by Asilbek Isakov on 03/12/23.
//

import UIKit

open class Button: UIButton {

    private var width: CGFloat = .greatestFiniteMagnitude
    private var height: CGFloat = 52
    
    private let hapticFeedback = UIImpactFeedbackGenerator(style: .medium)
//
//    public override var intrinsicContentSize: CGSize {
//        .init(width: CGFloat.greatestFiniteMagnitude, height: height)
//    }

    open override var intrinsicContentSize: CGSize {
        var width = self.width
        var height = self.height
        if width == UIView.noIntrinsicMetric {
            width = super.intrinsicContentSize.width
            if let contentEdgeInsets = viewModel?.contentEdgeInsets {
                width += contentEdgeInsets.left + contentEdgeInsets.right
            }
        }
        if height == UIView.noIntrinsicMetric {
            height = super.intrinsicContentSize.height
            if let contentEdgeInsets = viewModel?.contentEdgeInsets {
                height += contentEdgeInsets.top + contentEdgeInsets.bottom
            }
        }
        return .init(width: width, height: height)
    }

    public var onTap: (() -> Void)?

    public init(viewModel: ButtonViewModel? = nil) {
        super.init(frame: .zero)
        titleLabel?.font = Typography.subhead2.font
        self.viewModel = viewModel
        update()
        addTarget(self, action: #selector(didTap), for: .primaryActionTriggered)
        hapticFeedback.prepare()
    }

    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public var viewModel: ButtonViewModel? {
        didSet {
            update()
        }
    }

    open override var isHighlighted: Bool {
        didSet {
            if oldValue == isHighlighted { return }
            UIView.transition(with: self, duration: 0.2, options: .transitionCrossDissolve) {
                super.isHighlighted = self.isHighlighted
            }
            UIView.animate(withDuration: 0.3) {
                self.transform = self.isHighlighted ? CGAffineTransform(scaleX: 0.95, y: 0.95) : .identity
            }
            
            if isHighlighted {
                hapticFeedback.impactOccurred()
            }
        }
    }

    public override var isEnabled: Bool {
        didSet {
            if oldValue == isEnabled { return }
            UIView.transition(with: self, duration: 0.2, options: .transitionCrossDissolve) {
                super.isEnabled = self.isEnabled
            }
        }
    }
    
    public override var isSelected: Bool {
        didSet {
            if oldValue == isSelected { return }
            UIView.transition(with: self, duration: 0.2, options: .transitionCrossDissolve) {
                super.isSelected = self.isSelected
            }
            setTitle(viewModel?.selectedTitle, for: .selected)
            setTitle(viewModel?.title, for: .normal)
        }
    }

    public func update() {
        if let isSelected = viewModel?.isSelected {
            self.isSelected = isSelected
        }
        if let isEnabled = viewModel?.isEnabled {
            self.isEnabled = isEnabled
        }
        setTitle(viewModel?.title, for: .normal)
        if let font = viewModel?.font {
            titleLabel?.font = font
            titleLabel?.adjustsFontSizeToFitWidth = true
        }
        let corners = viewModel?.corners ?? .zero
        let borderWidth = viewModel?.borderWidth ?? 0
        var borderColor: UIColor = .clear

        if let normalColor = viewModel?.normalColor {
            if let _borderColor = viewModel?.borderNormalColor {
                borderColor = _borderColor
            }
            let image = UIImage.resizable()
                .color(normalColor)
                .corner(topLeft: corners.topLeft, topRight: corners.topRight, bottomLeft: corners.bottomLeft, bottomRight: corners.bottomRight)
                .border(width: borderWidth)
                .border(color: borderColor)
                .image
            setBackgroundImage(image, for: .normal)
        }
        if let highlightedColor = viewModel?.highlightedColor {
            if let _borderColor = viewModel?.borderHighlightedColor {
                borderColor = _borderColor
            }
            let image = UIImage.resizable()
                .color(highlightedColor)
                .corner(topLeft: corners.topLeft, topRight: corners.topRight, bottomLeft: corners.bottomLeft, bottomRight: corners.bottomRight)
                .border(width: borderWidth)
                .border(color: borderColor)
                .image
            setBackgroundImage(image, for: .highlighted)
            setBackgroundImage(image, for: [.highlighted, .selected])
        }
        if let selectedColor = viewModel?.selectedColor {
            if let _borderColor = viewModel?.borderSelectedColor {
                borderColor = _borderColor
            }
            let image = UIImage.resizable()
                .color(selectedColor)
                .corner(topLeft: corners.topLeft, topRight: corners.topRight, bottomLeft: corners.bottomLeft, bottomRight: corners.bottomRight)
                .border(width: borderWidth)
                .border(color: borderColor)
                .image
            setBackgroundImage(image, for: .selected)
        }
        if let disabledColor = viewModel?.disabledColor {
            if let _borderColor = viewModel?.borderDisabledColor {
                borderColor = _borderColor
            }
            let image = UIImage.resizable()
                .color(disabledColor)
                .corner(topLeft: corners.topLeft, topRight: corners.topRight, bottomLeft: corners.bottomLeft, bottomRight: corners.bottomRight)
                .border(width: borderWidth)
                .border(color: borderColor)
                .image
            setBackgroundImage(image, for: .disabled)
        }
        if let color = viewModel?.titleColor {
            setTitleColor(color, for: .normal)
        }
        if let color = viewModel?.titleHighlightedColor {
            setTitleColor(color, for: .highlighted)
        }
        if let color = viewModel?.titleDisabledColor {
            setTitleColor(color, for: .disabled)
        }
        if let color = viewModel?.titleSelectedColor {
            setTitleColor(color, for: .selected)
        }
        if let normalImage = viewModel?.normalImage {
            setImage(normalImage, for: .normal)
        }
        if let highlightedImage = viewModel?.highlightedImage {
            setImage(highlightedImage, for: .highlighted)
        }
        if let selectedImage = viewModel?.selectedImage {
            setImage(selectedImage, for: .selected)
        }
        if let disabledImage = viewModel?.disabledImage {
            setImage(disabledImage, for: .disabled)
        }

        if let width = viewModel?.width {
            self.width = width
        }
        if let height = viewModel?.height {
            self.height = height
        }
        
        if let imagePosition = viewModel?.imagePosition {
            switch imagePosition {
            case .leading:
                imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 8)
                break
            case .trailing:
                imageEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 0)
                semanticContentAttribute = .forceRightToLeft
            case .confirmPrice:
                let padding = intrinsicContentSize.width - (imageView?.intrinsicContentSize.width ?? 0) - (titleLabel?.intrinsicContentSize.width ?? 0) - 48
                imageEdgeInsets = UIEdgeInsets(top: 0, left: padding, bottom: 0, right: 0)
                titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: padding)
                semanticContentAttribute = .forceRightToLeft
            }
        }
        invalidateIntrinsicContentSize()
    }

    @objc private func didTap() {
        onTap?()
    }
}
