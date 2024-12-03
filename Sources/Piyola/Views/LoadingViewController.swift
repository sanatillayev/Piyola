//
//  LoadingViewController.swift
//
//
//  Created by Bilol Sanatillayev on 14/07/24.
//

import UIKit
import SwiftUI
import SnapKit

public final class LoadingViewController: UIViewController {
    private let background = UIVisualEffectView()
    private var loadingView = {
        if #available(iOS 15.0, *) {
            return UIHostingController(rootView: LoadingAnimation(with: Color(uiColor: Colors.orange.color), lineWidth: 6))
        } else {
            return UIHostingController(rootView: LoadingAnimation(with: Colors.orange.swiftUIColor, lineWidth: 6))
        }
    }()

    private lazy var activityIndicator = UIActivityIndicatorView(style: .large)
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(background)
        view.addSubview(loadingView.view)
        view.backgroundColor = .clear
        background.effect = UIBlurEffect(style: .systemUltraThinMaterialLight)
        loadingView.view.backgroundColor = .clear
        background.layer.cornerRadius = 24
        background.layer.masksToBounds = true
        loadingView.view.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        background.snp.makeConstraints { make in
            make.size.equalTo(124)
            make.center.equalToSuperview()
        }
    }
}

public extension UIViewController {
    func add(_ child: UIViewController) {
        addChild(child)
        view.addSubview(child.view)
        child.view.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide)
        }
        child.didMove(toParent: self)
    }
    func remove() {
        DispatchQueue.main.async { [weak self] in
            guard let self else { return }
            guard parent != nil else {return}
            willMove(toParent: nil)
            view.removeFromSuperview()
            removeFromParent()
        }
    }
}

import UIKit

public final class LoadingFooterView: UICollectionReusableView {
    private let activityIndicator: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView(style: .medium)
        indicator.hidesWhenStopped = true
        return indicator
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(activityIndicator)
        activityIndicator.center = center
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


public class LoadingView: UIView {
    private let background = UIVisualEffectView()
    private let gradientLayer = CAGradientLayer()
    private let titleLabel = UILabel(typography: .body2, color: Colors.white.color)
    private var loadingView = {
        if #available(iOS 15.0, *) {
            return UIHostingController(rootView: LoadingAnimation(with: Color(uiColor: Colors.orange.color), lineWidth: 6))
        } else {
            return UIHostingController(rootView: LoadingAnimation(with: Colors.orange.swiftUIColor, lineWidth: 6))
        }
    }()

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        titleLabel.text = "Loading..."
        backgroundColor = .clear
        setupGradientBackground()
        addSubview(background)
        addSubview(loadingView.view)
        addSubview(titleLabel)
        background.effect = UIBlurEffect(style: .systemMaterialLight)
        loadingView.view.backgroundColor = .clear
        loadingView.view.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(loadingView.view.snp.bottom).offset(24)
            make.centerX.equalToSuperview()
        }
        background.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    private func setupGradientBackground() {
        gradientLayer.colors = [
            Colors.orangeHighlight.color.cgColor,
            Colors.orange.color.cgColor,
            Colors.red.color.cgColor,
            Colors.white.color.cgColor
        ]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        layer.insertSublayer(gradientLayer, at: 0)
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
}

