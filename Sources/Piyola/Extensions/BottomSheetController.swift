//
//  BottomSheetController.swift
//
//
//  Created by Asilbek Isakov on 09/01/24.
//

import UIKit
import FloatingPanel

public final class BottomPanelController: FloatingPanelController {

    public var didRemove: (() -> Void)?

    enum Constants {
        static let grabberHandlePadding: CGFloat = 15
        static let grabberHandleSize: CGSize = .init(width: 44, height: 6)
    }

    public override init(delegate: FloatingPanelControllerDelegate? = nil) {
        super.init(delegate: delegate)
        layout = IntrinsicLayout()
        behavior = CustomPanelBehavior()
        backdropView.dismissalTapGestureRecognizer.isEnabled = true
        isRemovalInteractionEnabled = true

        surfaceView.grabberHandle.backgroundColor = Colors.gray100.color
        surfaceView.grabberHandlePadding = -Constants.grabberHandlePadding
        surfaceView.grabberHandleSize = Constants.grabberHandleSize
        surfaceView.grabberHandle.isHidden = true
        contentMode = .static
        contentInsetAdjustmentBehavior = .always

        let appearance = SurfaceAppearance()
        appearance.cornerCurve = .continuous
        appearance.cornerRadius = 24
        appearance.backgroundColor = .white

        let shadow = SurfaceAppearance.Shadow()
        shadow.color = UIColor.black
        shadow.offset = CGSize(width: 0, height: 16)
        shadow.radius = 10
        shadow.spread = 8
        appearance.shadows = [shadow]

        surfaceView.appearance = appearance
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()

        if let subviews = contentViewController?.view.subviews {
            subviews.forEach { v in
                if let scrollView = v as? UIScrollView {
                    track(scrollView: scrollView)
                }
            }
        }
        setupKeyboardNotifications()
    }
    
    public func hideGrabber(_ isHidden: Bool) {
        surfaceView.grabberHandle.isHidden = isHidden
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    private func setupKeyboardNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc private func keyboardWillShow(_ notification: Notification) {
        guard let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let keyboardHeight = keyboardFrame.height
        adjustForKeyboard(showing: true, height: keyboardHeight)
    }
    
    @objc private func keyboardWillHide(_ notification: Notification) {
        adjustForKeyboard(showing: false, height: 0)
    }
    
    private func adjustForKeyboard(showing: Bool, height: CGFloat) {
        guard let contentViewController = contentViewController else { return }
        let bottomInset = showing ? height : 0
        let animationDuration = showing ? 0.3 : 0.2
        UIView.animate(withDuration: animationDuration) {
            contentViewController.additionalSafeAreaInsets.bottom = bottomInset
            self.surfaceView.setNeedsLayout()
            self.surfaceView.layoutIfNeeded()
        }
    }
}

extension UIViewController {

    public var sheet: BottomPanelController {
        let controller = BottomPanelController()
        controller.set(contentViewController: self)
        controller.delegate = controller
        return controller
    }

}

extension BottomPanelController: FloatingPanelControllerDelegate {

    public func floatingPanelDidMove(_ fpc: FloatingPanelController) {
        let loc = fpc.surfaceLocation
        let minY = fpc.surfaceLocation(for: .full).y
        fpc.surfaceLocation = CGPoint(x: loc.x, y: max(loc.y, minY))
    }

    public func floatingPanelDidRemove(_ fpc: FloatingPanelController) {
        didRemove?()
    }

}

final class IntrinsicLayout: FloatingPanelLayout {

    let position: FloatingPanelPosition = .bottom
    let initialState: FloatingPanelState = .full
    let anchors: [FloatingPanelState: FloatingPanelLayoutAnchoring] = [
        .full: FloatingPanelIntrinsicLayoutAnchor(absoluteOffset: 0, referenceGuide: .superview)
    ]

    func backdropAlpha(for state: FloatingPanelState) -> CGFloat {
        return 0.5
    }

}

final class CustomPanelBehavior: FloatingPanelBehavior {

    var springDecelerationRate: CGFloat = 0.985
    var removalInteractionVelocityThreshold: CGFloat = 3.0

    func allowsRubberBanding(for edge: UIRectEdge) -> Bool {
        return false
    }

    func shouldProjectMomentum(_ fpc: FloatingPanelController, to proposedTargetPosition: FloatingPanelState) -> Bool {
        return false
    }
}

extension Notification {
    public var keyboardRect: CGRect  {
        (userInfo?[UIResponder.keyboardFrameEndUserInfoKey]
         as? NSValue)?.cgRectValue ?? .zero
    }
    
    public var keyboardHeight: CGFloat {
        (userInfo?[UIResponder.keyboardFrameEndUserInfoKey]
         as? NSValue)?.cgRectValue.height ?? 0
    }
}
