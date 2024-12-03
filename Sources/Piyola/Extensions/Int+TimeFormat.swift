//
//  Int+TimeFormat.swift
//  Lamenu
//
//  Created by Asilbek Isakov on 06/12/23.
//

import Foundation

extension Int {
    public var minuteSecondFormat: String {
        String(format: "%02d:%02d", abs(self) / 60, abs(self) % 60)
    }
}
