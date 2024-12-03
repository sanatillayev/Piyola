//
//  LoadingAnimation.swift
//
//
//  Created by Bilol Sanatillayev on 12/07/24.
//

import SwiftUI

public struct LoadingAnimation: View {
    @State private var rotation: Double = 0
    @State private var trim: CGFloat = 0.1
    private let color: Color
    private let lineWidth: CGFloat
    
    public init(with color: Color, lineWidth: CGFloat = 2) {
        self.color = color
        self.lineWidth = lineWidth
    }
    
    public var body: some View {
        Circle()
            .trim(from: 0, to: trim)
            .stroke(style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
            .frame(width: 46, height: 46)
            .foregroundColor(color)
            .rotationEffect(.degrees(rotation))
            .onAppear {
                withAnimation(Animation.linear(duration: 0.5).repeatForever(autoreverses: false)) {
                    rotation = 360
                }
                withAnimation(Animation.easeInOut(duration: 0.5).repeatForever(autoreverses: true)) {
                    trim = 1
                }
            }
    }
}
