//
//  OfflineViewController.swift
//
//
//  Created by Bilol Sanatillayev on 14/07/24.
//

import UIKit

public final class OfflineViewController: UIViewController {
    private let imageView = UIImageView(image: Images.offline.image)
    private let titleLabel = UILabel(typography: .title2)
    private let subtitleLabel = UILabel(typography: .body3)
    private let button = Button(viewModel: .makeOrange(with: L10n.Common.reload))
    
    public override func viewDidLoad() {
        view.addSubview(imageView)
        view.addSubview(titleLabel)
        view.addSubview(subtitleLabel)
        view.addSubview(button)
        view.backgroundColor = Colors.white.color
        titleLabel.text = L10n.Common.offline
        subtitleLabel.text = L10n.Common.notConnected
        imageView.snp.makeConstraints { make in
            make.bottom.equalToSuperview().dividedBy(2)
            make.centerX.equalToSuperview()
        }
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
        subtitleLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(8)
            make.centerX.equalToSuperview()
        }
        button.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview().inset(24)
            make.bottom.equalTo(view.safeAreaLayoutGuide).inset(16)
        }
    }
}

public class OfflineView: UIView {

    private let errorView = IconDescriptionView(.offline)
    private let reloadButton = Button(viewModel: .outlined(title: L10n.Common.reload, color: Colors.orange.color))
    
    public var onReloadTapped: (() -> Void)?

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        backgroundColor = Colors.white.color
        addSubview(errorView)
        addSubview(reloadButton)
        errorView.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview().inset(24)
            make.bottom.equalTo(snp.centerY)
        }
        reloadButton.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview().inset(24)
            make.bottom.equalTo(safeAreaLayoutGuide).inset(24)
        }
        reloadButton.onTap = { [weak self] in
            self?.onReloadTapped?()
        }
    }
}

