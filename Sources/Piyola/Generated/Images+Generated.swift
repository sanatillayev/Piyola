// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif
#if canImport(SwiftUI)
  import SwiftUI
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
public typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
public enum Images {
  public static let add = ImageAsset(name: "Add")
  public static let arrowDown = ImageAsset(name: "ArrowDown")
  public static let arrowLeft = ImageAsset(name: "ArrowLeft")
  public static let arrowRight = ImageAsset(name: "ArrowRight")
  public static let cart = ImageAsset(name: "Cart")
  public static let cartSelected = ImageAsset(name: "CartSelected")
  public static let chevronLeft = ImageAsset(name: "ChevronLeft")
  public static let confirm = ImageAsset(name: "Confirm")
  public static let edit = ImageAsset(name: "Edit")
  public static let emptyAvatar = ImageAsset(name: "EmptyAvatar")
  public static let home = ImageAsset(name: "Home")
  public static let homeSelected = ImageAsset(name: "HomeSelected")
  public static let lamenu = ImageAsset(name: "Lamenu")
  public static let language = ImageAsset(name: "Language")
  public static let login = ImageAsset(name: "Login")
  public static let logout = ImageAsset(name: "Logout")
  public static let myAddress = ImageAsset(name: "MyAddress")
  public static let news = ImageAsset(name: "News")
  public static let orders = ImageAsset(name: "Orders")
  public static let promo = ImageAsset(name: "Promo")
  public static let radioOff = ImageAsset(name: "RadioOff")
  public static let radioOn = ImageAsset(name: "RadioOn")
  public static let refresh = ImageAsset(name: "Refresh")
  public static let search = ImageAsset(name: "Search")
  public static let sms = ImageAsset(name: "Sms")
  public static let themes = ImageAsset(name: "Themes")
  public static let tick = ImageAsset(name: "Tick")
  public static let time = ImageAsset(name: "Time")
  public static let timer = ImageAsset(name: "Timer")
  public static let trash = ImageAsset(name: "Trash")
  public static let trash2 = ImageAsset(name: "Trash2")
  public static let user = ImageAsset(name: "User")
  public static let userSelected = ImageAsset(name: "UserSelected")
  public static let warning = ImageAsset(name: "Warning")
  public static let about = ImageAsset(name: "about")
  public static let accepted = ImageAsset(name: "accepted")
  public static let addLine = ImageAsset(name: "addLine")
  public static let archive = ImageAsset(name: "archive")
  public static let arrowDownGreen = ImageAsset(name: "arrowDownGreen")
  public static let arrowUpRed = ImageAsset(name: "arrowUpRed")
  public static let bag = ImageAsset(name: "bag")
  public static let branch = ImageAsset(name: "branch")
  public static let call = ImageAsset(name: "call")
  public static let card = ImageAsset(name: "card")
  public static let cash = ImageAsset(name: "cash")
  public static let cashback = ImageAsset(name: "cashback")
  public static let check = ImageAsset(name: "check")
  public static let click = ImageAsset(name: "click")
  public static let clients = ImageAsset(name: "clients")
  public static let cooking = ImageAsset(name: "cooking")
  public static let copy = ImageAsset(name: "copy")
  public static let courier = ImageAsset(name: "courier")
  public static let cube = ImageAsset(name: "cube")
  public static let custom = ImageAsset(name: "custom")
  public static let customerService = ImageAsset(name: "customerService")
  public static let delivered = ImageAsset(name: "delivered")
  public static let experss24 = ImageAsset(name: "experss24")
  public static let facebook = ImageAsset(name: "facebook")
  public static let findMe = ImageAsset(name: "findMe")
  public static let fire = ImageAsset(name: "fire")
  public static let help = ImageAsset(name: "help")
  public static let instagram = ImageAsset(name: "instagram")
  public static let location = ImageAsset(name: "location")
  public static let mapPin = ImageAsset(name: "mapPin")
  public static let mapPlacemark = ImageAsset(name: "mapPlacemark")
  public static let menu = ImageAsset(name: "menu")
  public static let millenium = ImageAsset(name: "millenium")
  public static let mobile = ImageAsset(name: "mobile")
  public static let motorbike = ImageAsset(name: "motorbike")
  public static let newOrder = ImageAsset(name: "newOrder")
  public static let notActive = ImageAsset(name: "notActive")
  public static let notPaid = ImageAsset(name: "notPaid")
  public static let offline = ImageAsset(name: "offline")
  public static let onWay = ImageAsset(name: "onWay")
  public static let `operator` = ImageAsset(name: "operator")
  public static let paid = ImageAsset(name: "paid")
  public static let payme = ImageAsset(name: "payme")
  public static let payment = ImageAsset(name: "payment")
  public static let paynet = ImageAsset(name: "paynet")
  public static let pickedUp = ImageAsset(name: "pickedUp")
  public static let privacy = ImageAsset(name: "privacy")
  public static let productPlaceholder = ImageAsset(name: "productPlaceholder")
  public static let qr = ImageAsset(name: "qr")
  public static let `repeat` = ImageAsset(name: "repeat")
  public static let repeatCircle = ImageAsset(name: "repeatCircle")
  public static let restaurant = ImageAsset(name: "restaurant")
  public static let restaurantSelected = ImageAsset(name: "restaurantSelected")
  public static let ring = ImageAsset(name: "ring")
  public static let settings = ImageAsset(name: "settings")
  public static let settingsList = ImageAsset(name: "settingsList")
  public static let star = ImageAsset(name: "star")
  public static let starFilled = ImageAsset(name: "starFilled")
  public static let status1 = ImageAsset(name: "status1")
  public static let status2 = ImageAsset(name: "status2")
  public static let status3 = ImageAsset(name: "status3")
  public static let status3pick = ImageAsset(name: "status3pick")
  public static let status4 = ImageAsset(name: "status4")
  public static let stoplist = ImageAsset(name: "stoplist")
  public static let substractLine = ImageAsset(name: "substractLine")
  public static let swipeIcon = ImageAsset(name: "swipeIcon")
  public static let telegram = ImageAsset(name: "telegram")
  public static let terms = ImageAsset(name: "terms")
  public static let timeFlash = ImageAsset(name: "timeFlash")
  public static let truck = ImageAsset(name: "truck")
  public static let update = ImageAsset(name: "update")
  public static let uzum = ImageAsset(name: "uzum")
  public static let vacancy = ImageAsset(name: "vacancy")
  public static let wallet = ImageAsset(name: "wallet")
  public static let watch = ImageAsset(name: "watch")
  public static let web = ImageAsset(name: "web")
  public static let xMark = ImageAsset(name: "xMark")
  public static let xMarkFilled = ImageAsset(name: "xMarkFilled")
  public static let yandex = ImageAsset(name: "yandex")
  public static let yandexEats = ImageAsset(name: "yandexEats")
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

public struct ImageAsset {
  public fileprivate(set) var name: String

  #if os(macOS)
  public typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  public typealias Image = UIImage
  #endif

  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, macOS 10.7, *)
  public var image: Image {
    let bundle = Bundle.module
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }

  #if os(iOS) || os(tvOS)
  @available(iOS 8.0, tvOS 9.0, *)
  public func image(compatibleWith traitCollection: UITraitCollection) -> Image {
    let bundle = Bundle.module
    guard let result = Image(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }
  #endif

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  public var swiftUIImage: SwiftUI.Image {
    SwiftUI.Image(asset: self)
  }
  #endif
}

public extension ImageAsset.Image {
  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, *)
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init?(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = Bundle.module
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
public extension SwiftUI.Image {
  init(asset: ImageAsset) {
    let bundle = Bundle.module
    self.init(asset.name, bundle: bundle)
  }

  init(asset: ImageAsset, label: Text) {
    let bundle = Bundle.module
    self.init(asset.name, bundle: bundle, label: label)
  }

  init(decorative asset: ImageAsset) {
    let bundle = Bundle.module
    self.init(decorative: asset.name, bundle: bundle)
  }
}
#endif
