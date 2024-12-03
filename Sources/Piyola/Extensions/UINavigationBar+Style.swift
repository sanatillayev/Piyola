//
//  UINavigationBar+Style.swift
//
//
//  Created by Asilbek Isakov on 14/01/24.
//

import UIKit

public extension UINavigationBar {

    static func setupStyle() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.titleTextAttributes = [
            .font: UIFont.appMedium(at: 16),
            .foregroundColor: Colors.Text.primary.color
        ]
        appearance.backgroundColor = Colors.white.color
        appearance.shadowColor = .clear
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().isTranslucent = false
    }

}
