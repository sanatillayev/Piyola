//
//  UpdateViewController.swift
//  
//
//  Created by Bilol Sanatillayev on 14/07/24.
//

import UIKit
import SnapKit

public final class UpdateViewController: UIViewController {
    private let imageView = UIImageView(image: Images.update.image)
    private let titleLabel = UILabel(typography: .title2)
    private let subtitleLabel = UILabel(typography: .body3, color: Colors.Text.secondary.color)
    private let button = Button(viewModel: .makeOrange(with: L10n.Common.update))
    
    public override func viewDidLoad() {
        view.addSubview(imageView)
        view.addSubview(titleLabel)
        view.addSubview(subtitleLabel)
        view.addSubview(button)
        view.backgroundColor = Colors.white.color
        titleLabel.text = L10n.Common.updateTitle
        subtitleLabel.text = "\(UIApplication.version) v"
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

extension UIApplication {
    static var release: String {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String? ?? "x.x"
    }
    static var build: String {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as! String? ?? "x"
    }
    static var version: String {
        return "\(release).\(build)"
    }
}


public extension UIViewController {
    @objc func backDidTap() {
        navigationController?.popViewController(animated: true)
    }
}
