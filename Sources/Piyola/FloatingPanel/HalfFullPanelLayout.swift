//
//  HalfFullPanelLayout.swift
//
//
//  Created by Bilol Sanatillayev on 06/11/24.
//

import Foundation
import FloatingPanel

final class HalfFullPanelLayout: FloatingPanelLayout {
    let position: FloatingPanelPosition = .bottom
    let initialState: FloatingPanelState = .half
    let anchors: [FloatingPanelState: FloatingPanelLayoutAnchoring] = [
        .half: FloatingPanelLayoutAnchor(fractionalInset: 0.5, edge: .bottom, referenceGuide: .safeArea),
        .full: FloatingPanelLayoutAnchor(absoluteInset: 18, edge: .top, referenceGuide: .safeArea)
    ]
    func backdropAlpha(for state: FloatingPanelState) -> CGFloat {
        if state == .full { return 0.2 }
        return 0.6
    }
}

final class FullPanelLayout: FloatingPanelLayout {
    let position: FloatingPanelPosition = .bottom
    let initialState: FloatingPanelState = .full
    let anchors: [FloatingPanelState: FloatingPanelLayoutAnchoring] = [
        .full: FloatingPanelLayoutAnchor(absoluteInset: 24, edge: .top, referenceGuide: .safeArea)
    ]
    func backdropAlpha(for state: FloatingPanelState) -> CGFloat {
        return 0.6
    }
}
