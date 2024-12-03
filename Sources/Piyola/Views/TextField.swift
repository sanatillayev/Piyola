//
//  File.swift
//  
//
//  Created by Bilol Sanatillayev on 07/11/24.
//

import UIKit

open class TextField: UITextField, UITextFieldDelegate {
    
    private var viewModel: TextFieldViewModel?
    
    public init(viewModel: TextFieldViewModel) {
        super.init(frame: .zero)
        self.viewModel = viewModel
        self.delegate = self
        configure(with: viewModel)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(with viewModel: TextFieldViewModel) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: viewModel.leftPadding, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
        
        self.snp.makeConstraints { make in
            make.height.equalTo(viewModel.height)
            make.width.lessThanOrEqualTo(UIScreen.main.bounds.width - 32).priority(.low)
        }
        self.backgroundColor = viewModel.backgroundColor
        self.layer.cornerRadius = viewModel.cornerRadius
        self.layer.masksToBounds = true
        self.placeholder = viewModel.placeholder
        self.isSecureTextEntry = viewModel.isSecureTextEntry
        self.keyboardType = viewModel.keyboardType
        self.autocorrectionType = viewModel.autocorrectionType
        self.autocapitalizationType = viewModel.autocapitalizationType
        self.returnKeyType = viewModel.returnKeyType
        self.clearButtonMode = viewModel.clearButtonMode
        
        if viewModel.fieldType == .password {
           addShowPasswordToggle()
        }
    }
    
    private func addShowPasswordToggle() {
        let button = UIButton(type: .custom)
        button.tintColor = Colors.gray400.color
        button.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        button.setImage(UIImage(systemName: "eye"), for: .selected)
        button.addTarget(self, action: #selector(togglePasswordVisibility), for: .touchUpInside)
        let buttonContainer = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 56))
        buttonContainer.addSubview(button)
        button.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 16))
        }
        rightView = buttonContainer
        rightViewMode = .always
    }
    
    @objc private func togglePasswordVisibility() {
        let buttonContainer = rightView
        isSecureTextEntry.toggle()
        guard let button = buttonContainer?.subviews.first as? UIButton else { return }
        button.isSelected.toggle()
    }
    
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let maxLength = viewModel?.maxLength else { return true }
        let currentText = textField.text ?? ""
        let newText = (currentText as NSString).replacingCharacters(in: range, with: string)
        return newText.count <= maxLength
    }
}
