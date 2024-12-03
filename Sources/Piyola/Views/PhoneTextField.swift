//
//  PhoneTextField.swift
//
//  Created by Asibek Isakov on 06/11/22.
//

import UIKit
import SnapKit
import Combine

public class PhoneTextField: UIView {

    private enum Constants {
        static let height: CGFloat = 56
        static let defaultMinOffset: CGFloat = 8
        static let iconSize: CGSize = CGSize(width: 24, height: 24)
        static let contentHorizontalOffset: CGFloat = 16
        static let contentVerticalOffset: CGFloat = 16

        static let phoneCode: String = "+998"
        static let placeholder: String = "_ _  _ _ _  _ _  _ _"
    }

    private let phoneCode = UILabel(typography: .subhead2)
    private let textField = UITextField()
    private let clearButton = UIButton(type: .system)

    @Published public var phoneText: String = ""
    private var cancellable: Cancellable?

    public var isEnabled: Bool = true {
        didSet {
            if oldValue == isEnabled { return }
            UIView.transition(with: self, duration: 0.3) {
                for subview in self.subviews {
                    subview.alpha = self.isEnabled ? 1 : 0.6
                }
                self.textField.isEnabled = self.isEnabled
            }
        }
    }

    public init() {
        super.init(frame: .zero)
        setupLayout()
        configureViews()

        cancellable = $phoneText.sink { [textField] text in
            textField.text = text
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupLayout() {
        [phoneCode, textField, clearButton].forEach {
            addSubview($0)
        }
        snp.makeConstraints { make in
            make.height.equalTo(Constants.height)
            make.width.greaterThanOrEqualTo(Constants.height)
        }
        phoneCode.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(Constants.contentHorizontalOffset)
            make.centerY.equalToSuperview()
        }
        textField.snp.makeConstraints { make in
            make.leading.equalTo(phoneCode.snp.trailing).offset(Constants.defaultMinOffset)
            make.trailing.equalToSuperview().offset(Constants.height)
            make.centerY.equalToSuperview()
        }
        clearButton.snp.makeConstraints { make in
            make.size.equalTo(Constants.iconSize)
            make.trailing.equalToSuperview().inset(Constants.contentHorizontalOffset)
            make.centerY.equalToSuperview()
        }
    }

    private func configureViews() {
        layer.cornerRadius = 12
        backgroundColor = Colors.gray100.color

        phoneCode.text = Constants.phoneCode
        textField.placeholder = Constants.placeholder
        textField.font = Typography.subhead2.font
        textField.textColor = Colors.Text.primary.color
        textField.keyboardType = .numberPad
        textField.textContentType = .telephoneNumber
        textField.autocorrectionType = .yes
        textField.addTarget(self, action: #selector(textDidChange(sender:)), for: .editingChanged)

//        buttonClear.setImage(Asset.Common.cross.image, for: .normal)
//        buttonClear.tintColor = Asset.Colors.greyTertiary.color
        adaptButtonClear()
        clearButton.addTarget(self, action: #selector(buttonClearDidTap), for: .primaryActionTriggered)
    }

    @discardableResult
    public override func becomeFirstResponder() -> Bool {
        textField.becomeFirstResponder()
    }

    @objc
    private func textDidChange(sender: UITextField) {
        var text = sender.text ?? ""
        if text.hasPrefix(Constants.phoneCode) {
            text = String(text.dropFirst(Constants.phoneCode.count))
        }
        phoneText = text.onlyNumber
        sender.text = text.maskUzShort
        adaptButtonClear()
    }

    @objc
    private func buttonClearDidTap() {
        textField.text = ""
        textDidChange(sender: textField)
    }

    private func adaptButtonClear() {
        let text = self.textField.text ?? ""
        UIView.transition(with: self, duration: 0.3) {
            self.clearButton.alpha = text.isEmpty ? 0 : 1
        }
    }

    public func setError(_ isError: Bool) {
        UIView.animate(withDuration: 0.3) {
            self.layer.borderColor = Colors.red.color.cgColor
            self.layer.borderWidth = isError ? 1 : 0
            self.backgroundColor = isError ? .white : Colors.gray100.color
        }
    }
}
