//
//  Typograghy.swift
//  Lamenu
//
//  Created by Asilbek Isakov on 28/10/23.
//

import UIKit

public enum Typography {

    // MARK: TITLE
    case title1
    case title2
    case title2m
    case title3
    case title4

    // MARK: HEADLINE
    case headline1
    case headline2

    // MARK: SUBHEAD
    case subhead1
    case subhead2
    case subhead3
    case subhead4

    // MARK: BODY
    case body1
    case body2
    case body3

    // MARK: CAPTION
    case caption1
    case caption2

    public var rawValue: TypographyModel {
        let color = Colors.Text.primary.color
        switch self {
        case .title1:
            return TypographyModel(font: .appSemiBold(at: 28), color: color)
        case .title2:
            return TypographyModel(font: .appSemiBold(at: 24), color: color)
        case .title2m:
            return TypographyModel(font: .appMedium(at: 24), color: color)
        case .title3:
            return TypographyModel(font: .appSemiBold(at: 20), color: color)
        case .title4:
            return TypographyModel(font: .appSemiBold(at: 16), color: color)
        case .headline1:
            return TypographyModel(font: .appSemiBold(at: 18), color: color)
        case .headline2:
            return TypographyModel(font: .appSemiBold(at: 14), color: color)
        case .subhead1:
            return TypographyModel(font: .appMedium(at: 18), color: color)
        case .subhead2:
            return TypographyModel(font: .appMedium(at: 16), color: color)
        case .subhead3:
            return TypographyModel(font: .appMedium(at: 14), color: color)
        case .subhead4:
            return TypographyModel(font: .appMedium(at: 12), color: color)
        case .body1:
            return TypographyModel(font: .appRegular(at: 18), color: color)
        case .body2:
            return TypographyModel(font: .appRegular(at: 16), color: color)
        case .body3:
            return TypographyModel(font: .appRegular(at: 14), color: color)
        case .caption1:
            return TypographyModel(font: .appRegular(at: 12), color: color)
        case .caption2:
            return TypographyModel(font: .appSemiBold(at: 10), color: color)
        }
    }

    public var font: UIFont {
        rawValue.font
    }

    public var color: UIColor {
        rawValue.color
    }
}

public struct TypographyModel {
    let font: UIFont
    let color: UIColor
}
