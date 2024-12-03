//
//  ButtonViewModel.swift
//
//
//  Created by Asilbek Isakov on 03/01/24.
//

import UIKit

public struct ButtonViewModel {
    public enum ImagePosition {
        case leading
        case trailing
        case confirmPrice
    }
    
    public struct CornerRadius {
        let topLeft: CGFloat
        let topRight: CGFloat
        let bottomLeft: CGFloat
        let bottomRight: CGFloat
        
        public init(topLeft: CGFloat, topRight: CGFloat, bottomLeft: CGFloat, bottomRight: CGFloat) {
            self.topLeft = topLeft
            self.topRight = topRight
            self.bottomLeft = bottomLeft
            self.bottomRight = bottomRight
        }
        
        public static let zero = CornerRadius(topLeft: 0, topRight: 0, bottomLeft: 0, bottomRight: 0)
    }
    
    let width: CGFloat
    let height: CGFloat
    let contentEdgeInsets: UIEdgeInsets
    public var title: String?
    let selectedTitle: String?
    let font: UIFont?
    let corners: CornerRadius
    let isSelected: Bool
    let isEnabled: Bool
    let titleColor: UIColor?
    let titleHighlightedColor: UIColor?
    let titleDisabledColor: UIColor?
    let titleSelectedColor: UIColor?
    let normalColor: UIColor?
    let highlightedColor: UIColor?
    let selectedColor: UIColor?
    let disabledColor: UIColor?
    let borderWidth: CGFloat
    let borderNormalColor: UIColor?
    let borderHighlightedColor: UIColor?
    let borderSelectedColor: UIColor?
    let borderDisabledColor: UIColor?
    let normalImage: UIImage?
    let highlightedImage: UIImage?
    let selectedImage: UIImage?
    let disabledImage: UIImage?
    let imagePosition: ImagePosition?

    public init(
        width: CGFloat = UIView.noIntrinsicMetric,
        height: CGFloat = UIView.noIntrinsicMetric,
        contentEdgeInsets: UIEdgeInsets = .zero,
        title: String? = nil,
        selectedTitle: String? = nil,
        font: UIFont? = nil,
        cornerRadius: CGFloat = 12,
        corners: CornerRadius? = nil,
        isSelected: Bool = false,
        isEnabled: Bool = true,
        titleColor: UIColor? = nil,
        titleHighlightedColor: UIColor? = nil,
        titleDisabledColor: UIColor? = nil,
        titleSelectedColor: UIColor? = nil,
        normalColor: UIColor? = nil,
        highlightedColor: UIColor? = nil,
        selectedColor: UIColor? = nil,
        disabledColor: UIColor? = nil,
        borderWidth: CGFloat = 0,
        borderNormalColor: UIColor? = nil,
        borderHighlightedColor: UIColor? = nil,
        borderSelectedColor: UIColor? = nil,
        borderDisabledColor: UIColor? = nil,
        normalImage: UIImage? = nil,
        highlightedImage: UIImage? = nil,
        selectedImage: UIImage? = nil,
        disabledImage: UIImage? = nil,
        imagePosition: ImagePosition? = nil
    ) {
        self.width = width
        self.height = height
        self.contentEdgeInsets = contentEdgeInsets
        self.title = title
        self.selectedTitle = selectedTitle
        self.font = font
        self.corners = corners ?? CornerRadius(
            topLeft: cornerRadius, topRight: cornerRadius,
            bottomLeft: cornerRadius, bottomRight: cornerRadius)
        self.isSelected = isSelected
        self.isEnabled = isEnabled
        self.titleColor = titleColor
        self.titleHighlightedColor = titleHighlightedColor
        self.titleDisabledColor = titleDisabledColor
        self.titleSelectedColor = titleSelectedColor
        self.normalColor = normalColor
        self.highlightedColor = highlightedColor
        self.selectedColor = selectedColor
        self.disabledColor = disabledColor
        self.borderWidth = borderWidth
        self.borderNormalColor = borderNormalColor
        self.borderHighlightedColor = borderHighlightedColor
        self.borderSelectedColor = borderSelectedColor
        self.borderDisabledColor = borderDisabledColor
        self.normalImage = normalImage
        self.highlightedImage = highlightedImage
        self.selectedImage = selectedImage
        self.disabledImage = disabledImage
        self.imagePosition = imagePosition
    }

}

extension ButtonViewModel {

    public static let confirm: ButtonViewModel = .makeOrange(with: L10n.Common.confirm)
    public static let `continue`: ButtonViewModel = .makeOrange(with: L10n.Common.continue)

    public static func makeOrange(with title: String?) -> ButtonViewModel {
        .init(
            width: 52,
            height: 52,
            title: title,
            titleColor: Colors.white.color,
            titleDisabledColor: Colors.gray400.color,
            normalColor: Colors.orange.color,
            highlightedColor: Colors.orangeHighlight.color,
            disabledColor: Colors.gray100.color
        )
    }

    public static func makeGray(
        with title: String? = nil,
        titleColor: UIColor = Colors.Text.primary.color,
        cornerRadius: CGFloat = 12
    ) -> ButtonViewModel {
        .init(
            width: 52,
            height: 52,
            title: title,
            cornerRadius: cornerRadius,
            titleColor: titleColor,
            normalColor: Colors.gray100.color,
            highlightedColor: Colors.gray300.color
        )
    }
    
    public static func makeGreen(with title: String? = nil) -> ButtonViewModel {
        .init(
            width: 52,
            height: 52,
            title: title,
            titleColor: Colors.white.color,
            normalColor: Colors.green.color,
            highlightedColor: Colors.green.color.withAlphaComponent(0.4)
        )
    }

    public static func makeRed(with title: String? = nil) -> ButtonViewModel {
        .init(
            width: 52,
            height: 52,
            title: title,
            titleColor: Colors.white.color,
            normalColor: Colors.red.color,
            highlightedColor: Colors.red.color.withAlphaComponent(0.6)
        )
    }
    
    public static func selectServiceType(with title: String?, color: UIColor = Colors.Text.primary.color) -> ButtonViewModel {
        let highlightedColor = color.withAlphaComponent(0.6)
        return .init(
            width: 52,
            height: 32,
            title: title,
            titleColor: color,
            titleHighlightedColor: highlightedColor,
            normalImage: Images.arrowDown.image.withTintColor(color),
            highlightedImage: Images.arrowDown.image.withTintColor(highlightedColor),
            imagePosition: .trailing
        )
    }

    public static func makeOrangeAction(
        normalImage: UIImage?,
        highlightedImage: UIImage? = nil,
        disabledImage: UIImage? = nil
    ) -> ButtonViewModel {
        ButtonViewModel(
            width: 36,
            height: 36,
            titleColor: Colors.white.color,
            normalColor: Colors.orange.color,
            highlightedColor: Colors.orangeHighlight.color,
            borderWidth: 1,
            borderNormalColor: Colors.white.color,
            normalImage: normalImage,
            highlightedImage: highlightedImage,
            disabledImage: disabledImage
        )
    }
    
    public static func makeSmallOrange(
        title: String = ""
    ) -> ButtonViewModel {
        ButtonViewModel(
            height: 36,
            contentEdgeInsets: .init(top: 0, left: 12, bottom: 0, right: 12),
            title: title,
            font: .appRegular(at: 14),
            cornerRadius: 10,
            titleColor: Colors.Text.primary.color,
            titleSelectedColor: Colors.white.color,
            normalColor: Colors.gray300.color,
            highlightedColor: Colors.orangeHighlight.color,
            selectedColor: Colors.orange.color
        )
    }
    
    public static func outlined(
        title: String = "",
        color: UIColor = Colors.orange.color,
        image: UIImage? = nil
    ) -> ButtonViewModel {
        ButtonViewModel(
            height: 45,
            title: title,
            isSelected: false,
            titleColor: color,
            normalColor: .clear,
            highlightedColor: color.withAlphaComponent(0.3),
            borderWidth: 1,
            borderNormalColor: color,
            normalImage: image,
            imagePosition: .leading
        )
    }
    
    public static func radioButton() -> ButtonViewModel {
        .init(
            width: 24,
            height: 24,
            cornerRadius: 12,
            normalImage: Images.radioOff.image,
            selectedImage: Images.radioOn.image.with(color:Colors.orange.color)
        )
    }
    
    public static func xButton(with color: UIColor = Colors.red.color) -> ButtonViewModel {
        .init(
            width: 24,
            height: 24,
            cornerRadius: 12,
            normalImage: Images.xMark.image.with(color: color)
        )
    }
    
    public static func image(with image: UIImage, color: UIColor = Colors.white.color) -> ButtonViewModel {
        .init(
            width: 44,
            height: 44,
            cornerRadius: 12,
            normalColor: color,
            highlightedColor: color.withAlphaComponent(0.8),
            normalImage: image,
            highlightedImage: image.withAlpha(0.8),
            disabledImage: image.withAlpha(0.3)
        )
    }
    
    public static func mapButton(with image: UIImage) -> ButtonViewModel {
        .init(
            width: 44,
            height: 44,
            cornerRadius: 12,
            normalColor: Colors.white.color,
            highlightedColor: Colors.orangeHighlight.color.withAlphaComponent(0.8),
            selectedColor: Colors.orange.color,
            normalImage: image,
            highlightedImage: image.withAlpha(0.8)
        )
    }
    
    public static func addToCart(title: String?, selectedTitle: String?) -> ButtonViewModel {
        .init(
            width: 52,
            height: 52,
            title: title,
            selectedTitle: selectedTitle,
            titleColor: Colors.white.color,
            titleDisabledColor: Colors.gray400.color,
            titleSelectedColor: Colors.orange.color,
            normalColor: Colors.orange.color,
            highlightedColor: Colors.orangeHighlight.color,
            selectedColor: .clear,
            disabledColor: Colors.gray100.color,
            borderWidth: 1,
            borderNormalColor: .clear,
            borderSelectedColor: Colors.orange.color
        )
    }
    
    public static func confirmPrice(price: String, width: CGFloat) -> ButtonViewModel {
        .init(
            width: width,
            height: 52,
            title: price,
            cornerRadius: 0,
            titleColor: Colors.white.color,
            normalColor: Colors.orange.color,
            highlightedColor: Colors.orangeHighlight.color,
            normalImage: Images.confirm.image,
            highlightedImage: Images.confirm.image,
            imagePosition: .confirmPrice
        )
    }
    
    public static func filled(with color: UIColor) -> ButtonViewModel {
        .init(
            cornerRadius: 12,
            normalColor: color
        )
    }
    
    public static func filled(with color: UIColor, title: String, titleColor: UIColor, border: UIColor? = nil) -> ButtonViewModel {
        .init(
            height: 52,
            title: title,
            cornerRadius: 12,
            titleColor: titleColor,
            normalColor: color,
            highlightedColor: color.withAlphaComponent(0.2),
            borderWidth: border == nil ? 0 : 1,
            borderNormalColor: border
        )
    }
    
    public static func borderedWith(normalImage: UIImage?, title: String) -> ButtonViewModel {
        ButtonViewModel(
            height: 52,
            title: title,
            titleColor: Colors.Text.primary.color,
            normalColor: Colors.white.color,
            highlightedColor: Colors.gray100.color,
            disabledColor: Colors.gray100.color,
            borderWidth: 1,
            borderNormalColor: Colors.gray200.color,
            normalImage: normalImage,
            highlightedImage: normalImage?.withAlpha(0.8),
            disabledImage: normalImage?.withAlpha(0.4),
            imagePosition: .leading
        )
    }
    
    public static let plusAddCart = ButtonViewModel(
        height: 40,
        contentEdgeInsets: .init(top: 0, left: 8, bottom: 0, right: 8),
        cornerRadius: 12,
        normalColor: Colors.gray100.color,
        highlightedColor: Colors.gray300.color,
        normalImage: Images.add.image.withTintColor(Colors.Text.primary.color)
    )
    
    public static var inlineAddCart = {
        ButtonViewModel(
            height: 40,
            contentEdgeInsets: .init(top: 0, left: 8, bottom: 0, right: 8),
            title: L10n.Main.addToCart,
            font: .appSemiBold(at: 14),
            cornerRadius: 20,
            titleColor: Colors.orange.color,
            titleHighlightedColor: Colors.orangeHighlight.color,
            normalColor: Colors.white.color,
            highlightedColor: Colors.white.color,
            borderWidth: 1,
            borderNormalColor: Colors.orange.color,
            borderHighlightedColor: Colors.orangeHighlight.color
        )
    }
    
    public static func itemSelect(_ title: String, imagePositiion: ImagePosition = .trailing, normalImage: UIImage? = Images.arrowDown.image) -> ButtonViewModel {
        ButtonViewModel(
            height: 52,
            contentEdgeInsets: .init(top: 0, left: 16, bottom: 0, right: 16),
            title: title,
            font: .appMedium(at: 16),
            cornerRadius: 16,
            titleColor: Colors.Text.primary.color,
            titleDisabledColor: Colors.Text.secondary.color,
            normalColor: Colors.gray100.color,
            highlightedColor: Colors.gray200.color,
            disabledColor: Colors.gray100.color.withAlphaComponent(0.6),
            borderWidth: 1,
            borderNormalColor: Colors.gray200.color,
            borderHighlightedColor: Colors.gray300.color,
            borderDisabledColor: Colors.gray100.color,
            normalImage: normalImage?.withTintColor(Colors.gray400.color),
            disabledImage: normalImage?.withTintColor(Colors.gray200.color),
            imagePosition: imagePositiion
        )
    }
}

extension UIImage {
    func withAlpha(_ a: CGFloat) -> UIImage {
        return UIGraphicsImageRenderer(size: size, format: imageRendererFormat).image { (_) in
            draw(in: CGRect(origin: .zero, size: size), blendMode: .normal, alpha: a)
        }
    }
}
