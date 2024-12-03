//
//  IconDescriptionViewModel.swift
//
//
//  Created by Asilbek Isakov on 16/7/24.
//

import UIKit

public struct IconDescriptionViewModel {
    public let image: UIImage?
    public let title: String?
    public let subtitle: String?
    
    public init(image: UIImage?, title: String?, subtitle: String?) {
        self.image = image
        self.title = title
        self.subtitle = subtitle
    }
    
    public static var emptyUser: IconDescriptionViewModel {
        IconDescriptionViewModel(
            image: Images.notActive.image,
            title: L10n.Auth.activationRequired,
            subtitle: L10n.Auth.activationDescription)
    }
    
    public static var emptyCart: IconDescriptionViewModel {
        IconDescriptionViewModel(
            image: Images.cart.image.withTintColor(Colors.orange.color),
            title: L10n.Cart.empty,
            subtitle: L10n.Cart.emptySubtitle)
    }
    
    public static var emptyMenu: IconDescriptionViewModel {
        IconDescriptionViewModel(
            image: Images.cart.image.withTintColor(Colors.orange.color),
            title: L10n.Cart.emptyMenu,
            subtitle: "")
    }
    
    public static var emptyUsersList: IconDescriptionViewModel {
        IconDescriptionViewModel(
            image: Images.cart.image.withTintColor(Colors.orange.color),
            title: L10n.Cart.emptyMenu,
            subtitle: "")
    }
    
    public static func emptyList(with title: String) -> IconDescriptionViewModel {
        IconDescriptionViewModel(
            image: Images.cart.image.withTintColor(Colors.orange.color),
            title: title,
            subtitle: "")
    }
    
    public static let emptyOrderHistory: IconDescriptionViewModel = IconDescriptionViewModel(
        image: Images.orders.image.withTintColor(Colors.orange.color),
        title: L10n.Profile.orderHistoryEmpty,
        subtitle: "")
    
    public static let emptyOrderList: IconDescriptionViewModel = IconDescriptionViewModel(
        image: Images.orders.image.withTintColor(Colors.orange.color),
        title: L10n.Order.emptyOrdersList,
        subtitle: "")
    
    public static let emptyPromo: IconDescriptionViewModel = IconDescriptionViewModel(
        image: Images.promo.image.withTintColor(Colors.orange.color),
        title: L10n.Profile.promoEmpty,
        subtitle: "")
    
    public static let emptyVacancy: IconDescriptionViewModel = IconDescriptionViewModel(
        image: Images.vacancy.image.withTintColor(Colors.orange.color),
        title: L10n.Profile.vacancyEmpty,
        subtitle: "")
    
    public static let emptyAddress: IconDescriptionViewModel = IconDescriptionViewModel(
        image: Images.myAddress.image.withTintColor(Colors.orange.color),
        title: L10n.Profile.addressEmpty,
        subtitle: "")
    
    public static var offline: IconDescriptionViewModel {
        IconDescriptionViewModel(
            image: Images.offline.image.withTintColor(Colors.orange.color),
            title: L10n.Common.offline,
            subtitle: L10n.Common.notConnected)
    }
}
