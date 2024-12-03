//
//  OneTimeCodeTextField.swift
//  oqot
//
//  Created by Asylbek Isakov on 06/11/22.
//

import UIKit
import Combine

public final class OTPTextField: UITextField {

    private var labels: [OTPLabel] = []
    private(set) var isError: Bool = false
    private(set) var isComplete: Bool = false

    public override var text: String? {
        didSet {
            super.text = text
            textDidChange()
        }
    }

    convenience init() {
        self.init(frame: .zero)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureTextField()
        let labelsStackView = createLabelsStackView(with: 5)
        addSubview(labelsStackView)

        let tapReconizer = UITapGestureRecognizer(target: self, action: #selector(becomeFirstResponder))
        addGestureRecognizer(tapReconizer)

        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 56),
            labelsStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            labelsStackView.topAnchor.constraint(equalTo: topAnchor),
            labelsStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            labelsStackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    @discardableResult
    public override func becomeFirstResponder() -> Bool {
        let count = text?.count ?? 0
        if count < labels.count {
            labels[count].isCursorVisible = true
        }
        return super.becomeFirstResponder()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configureTextField() {
        tintColor = .clear
        textColor = .clear
        keyboardType = .numberPad
        textContentType = .oneTimeCode

        addTarget(self, action: #selector(textDidChange), for: .editingChanged)
        delegate = self
    }

    private func createLabelsStackView(with count: Int) -> UIStackView {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 16

        for _ in 0..<count {
            let label = OTPLabel()
            stackView.addArrangedSubview(label)
            labels.append(label)
        }
        return stackView
    }

    @objc private func textDidChange() {
        guard let text = text, text.count <= labels.count else { return }

        for i in 0..<labels.count {
            let currentLabel = labels[i]
            currentLabel.isCursorVisible = false
            if i < text.count {
                let index = text.index(text.startIndex, offsetBy: i)
                currentLabel.text = String(text[index])
            } else {
                currentLabel.text?.removeAll()
            }
        }
        if text.count < labels.count {
            labels[text.count].isCursorVisible = true
        }
    }

    public func setError(_ isError: Bool) {
        labels.forEach { label in
            UIView.animate(withDuration: 0.3) {
                label.layer.borderColor = isError ? Colors.red.color.cgColor : UIColor.clear.cgColor
                label.backgroundColor = isError ? label.backgroundColor : Colors.gray100.color
            }
        }
    }

    public func setComplete(_ isComplete: Bool) {
        labels.forEach { label in
            UIView.animate(withDuration: 0.3) {
                label.layer.borderColor = isComplete ? Colors.green.color.cgColor : UIColor.clear.cgColor
                label.backgroundColor = isComplete ? Colors.white.color : Colors.gray100.color
            }
        }
    }
}

extension OTPTextField: UITextFieldDelegate {
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let characterCount = textField.text?.count else { return false }
        return characterCount < labels.count || string == ""
    }
}

fileprivate final class OTPLabel: UILabel {
    private let cursor = UIView()
    private var cancellable: AnyCancellable?
    var isCursorVisible: Bool = false {
        didSet {
            cursor.isHidden = !isCursorVisible
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureLabel()

        addSubview(cursor)
        cursor.backgroundColor = .black
        cursor.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cursor.centerXAnchor.constraint(equalTo: centerXAnchor),
            cursor.centerYAnchor.constraint(equalTo: centerYAnchor),
            cursor.widthAnchor.constraint(equalToConstant: 1),
            cursor.heightAnchor.constraint(equalToConstant: 20)
        ])
        cursor.isHidden = true
        animateCursor(alpha: 0)
    }

    private func animateCursor(alpha: CGFloat) {
        cancellable = Timer.publish(every: 0.5, on: .main, in: .common)
            .autoconnect()
            .sink() { [weak self] _ in
                guard let self else { return }
                let alpha = self.cursor.alpha
                self.cursor.alpha = alpha == 0 ? 1 : 0
            }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configureLabel() {
        translatesAutoresizingMaskIntoConstraints = false
        isUserInteractionEnabled = true
        textAlignment = .center
        font = .appMedium(at: 20)
        textColor = Colors.Text.primary.color

        backgroundColor = Colors.gray100.color
        layer.cornerRadius = 12
        layer.masksToBounds = true
        layer.borderWidth = 1
        layer.borderColor = UIColor.clear.cgColor
    }
}
