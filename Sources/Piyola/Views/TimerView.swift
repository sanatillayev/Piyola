//
//  TimerView.swift
//  Lamenu
//
//  Created by Asilbek Isakov on 08/12/23.
//

import UIKit

public final class TimerView: UIButton {

    public override var intrinsicContentSize: CGSize {
        CGSize(width: width, height: 36)
    }

    private var width: CGFloat = 44
    private(set) var isActive: Bool = false

    private let image = UIImageView()
    private let label = UILabel(typography: .body2)

    private var didTap: (() -> Void)?

    public var text: String? {
        get { label.text }
        set {
            label.text = newValue
            label.sizeToFit()
        }
    }

    public init() {
        super.init(frame: .zero)
        image.image = Images.refresh.image

        addSubview(label)
        addSubview(image)
        addTarget(self, action: #selector(actionDidTrigger), for: .primaryActionTriggered)

        label.sizeToFit()
        image.frame.size = CGSize(width: 20, height: 20)

        layer.borderColor = Colors.gray200.color.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 8

        update()
    }

    @objc private func actionDidTrigger() {
        didTap?()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public func setActive(_ isActive: Bool, animated: Bool = false) {
        guard self.isActive != isActive else { return }
        self.isActive = isActive

        if animated {
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1) {
                self.update()
            }
        } else {
            update()
        }
    }

    private func update() {
        width = isActive ? label.frame.width + 24 : 44
        invalidateIntrinsicContentSize()
        superview?.setNeedsLayout()
        superview?.layoutIfNeeded()
        let x = isActive ? 12 : 32
        label.frame.origin = CGPoint(x: x, y: 8)
        label.alpha = isActive ? 1 : 0
        let xI: CGFloat = isActive ? -8 : 12
        image.frame.origin = CGPoint(x: xI, y: 8)
        image.alpha = isActive ? 0 : 1
    }

}
