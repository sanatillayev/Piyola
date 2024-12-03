//
//  StepperView.swift
//
//
//  Created by Bilol Sanatillayev on 30/05/24.
//

import UIKit

public class StepperView: UIControl {
    public var didIncreased: (() -> Void)?
    public var didDecreased: (() -> Void)?
    
    public var value: Int = 1 {
        didSet {
            UIView.transition(with: label, duration: 0.2, options: .transitionCrossDissolve) {
                self.label.text = "\(self.value)"
            }
            if oldValue != value {
                sendActions(for: .valueChanged)
            }
            leftButton.isEnabled = isEnabled ? value > minimumValue : isEnabled
            rightButton.isEnabled = isEnabled ? value < maximumValue : isEnabled
        }
    }

    public var minimumValue: Int = 1 {
        didSet {
            value = min(maximumValue, max(minimumValue, value))
        }
    }

    public var maximumValue: Int = 30 {
        didSet {
            value = min(maximumValue, max(minimumValue, value))
        }
    }

    public var stepValue: Int = 1

    lazy public var leftButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(Images.substractLine.image, for: .normal)
        button.tintColor = Colors.Text.primary.color
//        button.setTitle("−", for: .normal)
        button.titleLabel?.font = .appRegular(at: 24)
        button.setTitleColor(Colors.Text.primary.color, for: .normal)
        button.setTitleColor(Colors.Text.secondary.color, for: .disabled)
        button.addTarget(self, action: #selector(decreaseValue), for: .touchUpInside)
        return button
    }()

    lazy public var rightButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = Colors.Text.primary.color
//        button.setTitle("+", for: .normal)
        button.setImage(Images.addLine.image, for: .normal)
        button.titleLabel?.font = .appRegular(at: 24)
        button.setTitleColor(Colors.Text.primary.color, for: .normal)
        button.setTitleColor(Colors.Text.secondary.color, for: .disabled)
        button.addTarget(self, action: #selector(increaseValue), for: .touchUpInside)
        return button
    }()

    lazy var label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .appMedium(at: 16)
        label.text = "\(value)"
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    private func setup() {
        addSubview(leftButton)
        addSubview(label)
        addSubview(rightButton)
        backgroundColor = Colors.gray100.color
        layer.cornerRadius = 20
    }
    public override var isEnabled: Bool {
        didSet {
            if !isEnabled {
                label.textColor = Colors.Text.secondary.color
            }
        }
    }

    public override func layoutSubviews() {
        super.layoutSubviews()

        let buttonWidth: CGFloat = 24
        let labelWidth: CGFloat = 24

        leftButton.frame = CGRect(x: 0+8, y: 0, width: buttonWidth, height: bounds.height)
        label.frame = CGRect(x: bounds.width / 2 - 12, y: 0, width: labelWidth, height: bounds.height)
        rightButton.frame = CGRect(x: bounds.width - buttonWidth - 8, y: 0, width: buttonWidth, height: bounds.height)
    }

    @objc private func decreaseValue() {
        if value > minimumValue {
//            value -= stepValue
            self.didDecreased?()
        }
    }

    @objc private func increaseValue() {
        if value < maximumValue {
//            value += stepValue
            self.didIncreased?()
        }
    }
}
