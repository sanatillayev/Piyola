//
//  SearchField.swift
//
//
//  Created by Bilol Sanatillayev on 22/07/24.
//

import UIKit
import SnapKit

public protocol SearchFieldDelegate: AnyObject {
    func searchField(_ searchField: SearchField, didChangeText text: String)
    func searchFieldDidBeginEditing(_ searchField: SearchField)
    func searchFieldDidEndEditing(_ searchField: SearchField)
    func searchFieldDidTapSearchButton(_ searchField: SearchField)
}

public extension SearchFieldDelegate {
    func searchFieldDidBeginEditing(_ searchField: SearchField) {}
    func searchFieldDidEndEditing(_ searchField: SearchField) {}
    func searchFieldDidTapSearchButton(_ searchField: SearchField) {}
}

public final class SearchField: UIView {
    
    // MARK: - Properties
    
    public weak var delegate: SearchFieldDelegate?
    
    public let textField = UITextField()
    private let imageView = UIImageView()
    
    // MARK: - Initialization
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
        setupConstraints()
    }
    
    // MARK: - Setup
    
    private func setupView() {
        addSubview(textField)
        textField.delegate = self
        textField.placeholder = "Search"
        textField.borderStyle = .none
        textField.returnKeyType = .search
        textField.leftViewMode = .always
        textField.font = .appRegular(at: 16)
        imageView.image = Images.search.image
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        let leftView: UIView = UIView(frame: CGRectMake(10, 0, 50, 24))
        leftView.addSubview(imageView)
        textField.leftView = leftView
        textField.layer.cornerRadius = 12
        textField.layer.masksToBounds = true
        textField.backgroundColor = Colors.gray100.color
        leftView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(becomeFirstResponder)))
    }
    
    private func setupConstraints() {
        textField.snp.makeConstraints { make in
            make.height.equalTo(48)
            make.edges.equalToSuperview()
        }
        imageView.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(16)
            make.trailing.equalToSuperview().inset(10)
            make.verticalEdges.equalToSuperview()
            make.size.equalTo(24)
        }
    }
    
    // MARK: - Actions
    
    @discardableResult
    public override func becomeFirstResponder() -> Bool {
        textField.becomeFirstResponder()
    }
    
    public override func resignFirstResponder() -> Bool {
        textField.resignFirstResponder()
    }
    
    @objc private func didTapSearchButton() {
        delegate?.searchFieldDidTapSearchButton(self)
        textField.resignFirstResponder()
    }
}

// MARK: - UITextFieldDelegate

extension SearchField: UITextFieldDelegate {
    public func textFieldDidBeginEditing(_ textField: UITextField) {
        delegate?.searchFieldDidBeginEditing(self)
    }
    
    public func textFieldDidEndEditing(_ textField: UITextField) {
        delegate?.searchFieldDidEndEditing(self)
    }
    
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentText = textField.text ?? ""
        guard let stringRange = Range(range, in: currentText) else { return false }
        let updatedText = currentText.replacingCharacters(in: stringRange, with: string)
        delegate?.searchField(self, didChangeText: updatedText)
        return true
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        delegate?.searchFieldDidTapSearchButton(self)
        textField.resignFirstResponder()
        return true
    }
}
