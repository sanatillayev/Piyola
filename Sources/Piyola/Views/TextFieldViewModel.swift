//
//  TextFieldViewModel.swift
//
//
//  Created by Bilol Sanatillayev on 07/11/24.
//

import UIKit

// Define the ViewModel for TextField
public struct TextFieldViewModel {
    public enum FieldType {
        case password, custom
    }
    let leftPadding: CGFloat
    let backgroundColor: UIColor
    let height: CGFloat
    let width: CGFloat
    let cornerRadius: CGFloat
    let placeholder: String?
    let isSecureTextEntry: Bool
    let keyboardType: UIKeyboardType
    let autocorrectionType: UITextAutocorrectionType
    let autocapitalizationType: UITextAutocapitalizationType
    let returnKeyType: UIReturnKeyType
    let clearButtonMode: UITextField.ViewMode
    let fieldType: FieldType
    let maxLength: Int?
    
    public init(
        leftPadding: CGFloat = 16,
        backgroundColor: UIColor = Colors.gray100.color,
        height: CGFloat = 56,
        width: CGFloat = .greatestFiniteMagnitude,
        cornerRadius: CGFloat = 12,
        placeholder: String? = nil,
        isSecureTextEntry: Bool = false,
        keyboardType: UIKeyboardType = .default,
        autocorrectionType: UITextAutocorrectionType = .default,
        autocapitalizationType: UITextAutocapitalizationType = .sentences,
        returnKeyType: UIReturnKeyType = .default,
        clearButtonMode: UITextField.ViewMode = .never,
        fieldType: FieldType = .custom,
        maxLength: Int? = nil
    ){
        self.leftPadding = leftPadding
        self.backgroundColor = backgroundColor
        self.height = height
        self.width = width
        self.cornerRadius = cornerRadius
        self.placeholder = placeholder
        self.isSecureTextEntry = isSecureTextEntry
        self.keyboardType = keyboardType
        self.autocorrectionType = autocorrectionType
        self.autocapitalizationType = autocapitalizationType
        self.returnKeyType = returnKeyType
        self.clearButtonMode = clearButtonMode
        self.fieldType = fieldType
        self.maxLength = maxLength
    }
}


public extension TextFieldViewModel {
    static let password = TextFieldViewModel(
        isSecureTextEntry: true,
        keyboardType: .default,
        autocorrectionType: .no,
        autocapitalizationType: .none,
        returnKeyType: .done,
        clearButtonMode: .never,
        fieldType: .password,
        maxLength: 16
    )
    
    static let phone = TextFieldViewModel(
        isSecureTextEntry: false,
        keyboardType: .phonePad,
        autocorrectionType: .no,
        autocapitalizationType: .none,
        returnKeyType: .done,
        clearButtonMode: .whileEditing,
        maxLength: 17
    )
    
    static let subdomain = TextFieldViewModel(
        isSecureTextEntry: false,
        keyboardType: .URL,
        autocorrectionType: .no,
        autocapitalizationType: .none,
        returnKeyType: .next,
        clearButtonMode: .never,
        maxLength: 20
    )
}
