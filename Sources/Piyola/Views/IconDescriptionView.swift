//
//  IconDescriptionView.swift
//
//
//  Created by Asilbek Isakov on 09/01/24.
//

import UIKit
import SnapKit

public final class IconDescriptionView: UIView {

    private let loginRectIconView = RectIconView()
    private let titleLabel = UILabel(typography: .subhead1)
    private let subtitleLabel = UILabel(typography: .body2, color: Colors.Text.secondary.color)

    public var image: UIImage? {
        didSet { loginRectIconView.image = image }
    }

    public var title: String? {
        didSet { titleLabel.text = title }
    }

    public var subtitle: String? {
        didSet { subtitleLabel.text = subtitle }
    }
    
    public var viewModel: IconDescriptionViewModel? {
        didSet {
            update()
        }
    }

    public init(_ viewModel: IconDescriptionViewModel? = nil) {
        super.init(frame: .zero)
        addSubview(loginRectIconView)
        addSubview(titleLabel)
        addSubview(subtitleLabel)

        loginRectIconView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview()
        }
        titleLabel.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.top.equalTo(loginRectIconView.snp.bottom).offset(16)
        }
        subtitleLabel.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.top.equalTo(titleLabel.snp.bottom).offset(8)
        }
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 0
        subtitleLabel.textAlignment = .center
        subtitleLabel.numberOfLines = 0
        
        self.viewModel = viewModel
        update()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func update() {
        image = viewModel?.image
        title = viewModel?.title
        subtitle = viewModel?.subtitle
    }
}
