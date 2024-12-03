// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

public enum Constants {
    public private(set) static var baseURL = "https://api-dev.lamenu.uz/api/"
    public static var imageBaseURL: String {
        #if DEBUG
        "https://cdn-dev.lamenu.uz/"
        #else
        "https://cdn.lamenu.uz/"
        #endif
    }
    public static let notification = "group.id.yewoo.notificationservice"
    public static let locale = "locale"
    
    public static func setBaseURL(_ url: String) {
        baseURL = url
    }
}

public enum OrderStatus: String, CaseIterable {
    case atTime = "AT_TIME"
    case created = "CREATED"
    case open = "OPEN"
    case accepted = "ACCEPTED"
    case cooking = "COOKING"
    case done = "DONE"
    case onWay = "ON_WAY"
    case delivered = "DELIVERED"
    case pickedUp = "PICKED_UP"
    case canceled = "CANCELED"
    
    public var translation: String {
        switch self {
        case .atTime:
            L10n.Cart.later
        case .created:
            L10n.Cart.created
        case .open:
            L10n.Cart.open
        case .accepted:
            L10n.Cart.accepted
        case .cooking:
            L10n.Cart.cooking
        case .done:
            L10n.Main.ready
        case .onWay:
            L10n.Cart.onWay
        case .delivered:
            L10n.Cart.delivered
        case .pickedUp:
            L10n.Cart.pickedUp
        case .canceled:
            L10n.Cart.canceled
        }
    }
}

public extension OrderStatus {
    /// Determines if the given status is enabled based on the current status in the workflow.
    /// - Parameter status: The target status to check.
    /// - Returns: `true` if the target status is enabled; `false` otherwise.
    func isEnabled(status: OrderStatus) -> Bool {
        guard let currentIndex = OrderStatus.allCases.firstIndex(of: self),
              let targetIndex = OrderStatus.allCases.firstIndex(of: status) else {
            return false
        }
        // Target status is enabled if it's above or equal to the current status
        return targetIndex > currentIndex
    }
}

public enum PaymentType: String, CaseIterable {
    case cash = "CASH"
    case payme = "PAYME"
    case click = "CLICK"
    case terminal = "TERMINAL"
    case uzum = "UZUM"
    case paynet = "PAYNET"
    case other = "OTHER"
    
    public var image: UIImage {
        switch self {
        case .cash:
            return Images.cash.image
        case .payme:
            return Images.payme.image
        case .click:
            return Images.click.image
        case .terminal:
            return Images.card.image
        case .uzum:
            return Images.uzum.image
        case .paynet:
            return Images.paynet.image
        case .other:
            return Images.cash.image
        }
    }
}

public enum OrderDevice: String {
    case telegram = "TELEGRAM_BOT"
    case clientApp = "CLIENT_APP"
    case `operator` = "OPERATOR"
    case instagram = "INSTAGRAM"
    case clientWeb = "CLIENT_WEB"
    case collector = "COLLECTOR_APP"
    case laPoster = "LAPOSTER"
    case aggregator = "AGGREGATOR"
}

public enum DeliveryType: String {
    case lamenu = "LAMENU"
    case yandex = "YANDEX"
    case millenium = "MILLENNIUM"
    case myTaxi = "MY_TAXI"
    case custom = "CUSTOM"
    case notSelected = ""
}

public enum CourierStatus: String {
    case newOrder = "NEW_ORDER"
    case estimatingFailed = "ESTIMATING_FAILED"
    case readyForApproval = "READY_FOR_APPROVAL"
    case failed = "FAILED"
    case performerLookUp = "PERFORMER_LOOK_UP"
    case performerFound = "PERFORMER_FOUND"
    case performerNotFound = "PERFORMER_NOT_FOUND"
    case accepted = "ACCEPTED"
    case performerPickUpArrived = "PERFORMER_PICK_UP_ARRIVED"
    case performerPickedUp = "PERFORMER_PICKUPED"
    case performerArrived = "PERFORMER_ARRIVED"
    case performerDeliveredFinish = "PERFORMER_DELIVERED_FINISH"
    case performerReturning = "PERFORMER_RETURNING"
    case performerReturnArrived = "PERFORMER_RETURN_ARRIVED"
    case performerReturnedFinish = "PERFORMER_RETURNED_FINISH"
    case cancelled = "CANCELLED"

    public var translation: TranslationModel {
        switch self {
        case .newOrder:
            return TranslationModel(uz: "Yangi buyurtma", ru: "Новый заказ", en: "New order")
        case .estimatingFailed:
            return TranslationModel(uz: "Kuryer qidirish amalga oshirilmadi", ru: "Поиск курьера не удался", en: "Courier lookup failed")
        case .readyForApproval:
            return TranslationModel(uz: "Kuryer tasdiqlashga tayyor", ru: "Курьер готов к подтверждению", en: "Courier ready for approval")
        case .failed:
            return TranslationModel(uz: "Kuryer qidirishda xatolik yuz berdi", ru: "Произошла ошибка при поиске курьера", en: "Error occurred while looking for courier")
        case .performerLookUp:
            return TranslationModel(uz: "Kuryer qidirilmoqda", ru: "Поиск курьера", en: "Looking for courier")
        case .performerFound:
            return TranslationModel(uz: "Kuryer topildi", ru: "Курьер найден", en: "Courier found")
        case .performerNotFound:
            return TranslationModel(uz: "Kuryer topilmadi", ru: "Курьер не найден", en: "Courier not found")
        case .performerPickUpArrived:
            return TranslationModel(uz: "Kuryer yetib keldi", ru: "Курьер пришел", en: "Courier has arrived")
        case .performerPickedUp:
            return TranslationModel(uz: "Kuryer buyurtmani olib ketdi", ru: "Курьер забрал заказ", en: "Courier picked up the order")
        case .performerArrived:
            return TranslationModel(uz: "Kuryer yetib bordi", ru: "Курьер пришел", en: "Courier has arrived")
        case .performerDeliveredFinish:
            return TranslationModel(uz: "Kuryer buyurtmani yetkazib berdi", ru: "Курьер доставил заказ", en: "Courier delivered the order")
        case .performerReturning:
            return TranslationModel(uz: "Kuryer qaytmoqda", ru: "Курьер возвращается", en: "Courier is returning")
        case .performerReturnArrived:
            return TranslationModel(uz: "Kuryer yetib keldi", ru: "Курьер пришел", en: "Courier has arrived")
        case .performerReturnedFinish:
            return TranslationModel(uz: "Kuryer qaytib keldi", ru: "Курьер вернулся", en: "Courier has returned")
        case .cancelled:
            return TranslationModel(uz: "Kuryer chaqiruvi bekor qilindi", ru: "Запрос курьера отменен", en: "Courier request canceled")
        case .accepted:
            return TranslationModel(uz: "Kuryer qabul qilindi", ru: "Курьер принят", en: "Courier accepted")
        }
    }
}


public enum SessionType: String {
    case driver = "DRIVER"
    case merchant = "MERCHANT"
    case collector = "COLLECTOR"
    case queue = "QUEUE"
    case progress = "PROGRESS"
    case clientAndroid = "CLIENT_ANDROID"
    case clientIOS = "CLIENT_IOS"
    case clientWeb = "CLIENT_WEB"
    case client = "CLIENT"
    case kitchen = "KITCHEN"
    case yandexEats = "YANDEX_EATS"
    case express24 = "EXPRESS_24"
    case telegram = "TELEGRAM"
    case iiko = "IIKO"
}

public enum PromoType: String {
    case oneTime = "ONE_TIME"
    case multiplePerUser = "MULTIPLE_PER_USER"
    case multiple = "MULTIPLE"
}

public enum DiscountType: String {
    case percentage = "PERCENTAGE"
    case amount = "AMOUNT"
}

public enum CallDirection: String {
    case inboud
    case outbound
    case local
}

public enum CallType: String {
    case answered = "ANSWERED"
    case missed = "MISSED"
    case outbound = "OUTBOUND"
    case inbound = "INBOUND"
    case local = "LOCAL"
}

public enum CallReason: String {
    case newOrder = "NEW_ORDER"
    case orderInfo = "ORDER_INFO"
    case ticket = "TICKET"
    case other = "OTHER"
    case thank = "THANK"
}

public extension UIDevice {
    static let modelName: String = {
    var systemInfo = utsname()
    uname(&systemInfo)
    let machineMirror = Mirror(reflecting: systemInfo.machine)
    let identifier = machineMirror.children.reduce("") { identifier, element in
      guard let value = element.value as? Int8, value != 0 else { return identifier }
      return identifier + String(UnicodeScalar(UInt8(value)))
    }
    
    func mapToDevice(identifier: String) -> String {
      #if os(iOS)
      switch identifier {
      case "iPod5,1":                                 return "iPod Touch 5"
      case "iPod7,1":                                 return "iPod Touch 6"
      case "iPhone3,1", "iPhone3,2", "iPhone3,3":     return "iPhone 4"
      case "iPhone4,1":                               return "iPhone 4s"
      case "iPhone5,1", "iPhone5,2":                  return "iPhone 5"
      case "iPhone5,3", "iPhone5,4":                  return "iPhone 5c"
      case "iPhone6,1", "iPhone6,2":                  return "iPhone 5s"
      case "iPhone7,2":                               return "iPhone 6"
      case "iPhone7,1":                               return "iPhone 6 Plus"
      case "iPhone8,1":                               return "iPhone 6s"
      case "iPhone8,2":                               return "iPhone 6s Plus"
      case "iPhone9,1", "iPhone9,3":                  return "iPhone 7"
      case "iPhone9,2", "iPhone9,4":                  return "iPhone 7 Plus"
      case "iPhone8,4":                               return "iPhone SE"
      case "iPhone10,1", "iPhone10,4":                return "iPhone 8"
      case "iPhone10,2", "iPhone10,5":                return "iPhone 8 Plus"
      case "iPhone10,3", "iPhone10,6":                return "iPhone X"
      case "iPhone11,2":                              return "iPhone XS"
      case "iPhone11,4", "iPhone11,6":                return "iPhone XS Max"
      case "iPhone11,8":                              return "iPhone XR"
      case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":return "iPad 2"
      case "iPad3,1", "iPad3,2", "iPad3,3":           return "iPad 3"
      case "iPad3,4", "iPad3,5", "iPad3,6":           return "iPad 4"
      case "iPad4,1", "iPad4,2", "iPad4,3":           return "iPad Air"
      case "iPad5,3", "iPad5,4":                      return "iPad Air 2"
      case "iPad6,11", "iPad6,12":                    return "iPad 5"
      case "iPad7,5", "iPad7,6":                      return "iPad 6"
      case "iPad2,5", "iPad2,6", "iPad2,7":           return "iPad Mini"
      case "iPad4,4", "iPad4,5", "iPad4,6":           return "iPad Mini 2"
      case "iPad4,7", "iPad4,8", "iPad4,9":           return "iPad Mini 3"
      case "iPad5,1", "iPad5,2":                      return "iPad Mini 4"
      case "iPad6,3", "iPad6,4":                      return "iPad Pro (9.7-inch)"
      case "iPad6,7", "iPad6,8":                      return "iPad Pro (12.9-inch)"
      case "iPad7,1", "iPad7,2":                      return "iPad Pro (12.9-inch) (2nd generation)"
      case "iPad7,3", "iPad7,4":                      return "iPad Pro (10.5-inch)"
      case "iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4":return "iPad Pro (11-inch)"
      case "iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8":return "iPad Pro (12.9-inch) (3rd generation)"
      case "AppleTV5,3":                              return "Apple TV"
      case "AppleTV6,2":                              return "Apple TV 4K"
      case "AudioAccessory1,1":                       return "HomePod"
      case "i386", "x86_64":                          return "Simulator \(mapToDevice(identifier: ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] ?? "iOS"))"
      default:                                        return identifier
      }
      #elseif os(tvOS)
      switch identifier {
      case "AppleTV5,3": return "Apple TV 4"
      case "AppleTV6,2": return "Apple TV 4K"
      case "i386", "x86_64": return "Simulator \(mapToDevice(identifier: ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] ?? "tvOS"))"
      default: return identifier
      }
      #endif
    }
    
    return mapToDevice(identifier: identifier)
  }()
}


public enum OrderLogType: String {
    case sendPoster = "SEND_POSTER"
    case paid = "PAID"
    case update = "UPDATE"
    case changeStatus = "CHANGE_STATUS"
    case comment = "COMMENT"
    case changeCourierStatus = "CHANGE_COURIER_STATUS"
    case changeCourierOrderStatus = "CHANGE_COURIER_ORDER_STATUS"
    case joinCourier = "JOIN_COURIER"
    case changePaymentType = "CHANGE_PAYMENT_TYPE"
    case changeServiceType = "CHANGE_SERVICE_TYPE"
    case changeDeliveryType = "CHANGE_DELIVERY_TYPE"
    case posterError = "POSTER_ERROR"
    case feedback = "FEEDBACK"
    case updateOperator = "UPDATE_OPERATOR"
    case collectorImage = "COLLECTOR_IMAGE"
    case courierPaid = "COURIER_PAID"

    public var translation: TranslationModel {
        switch self {
        case .sendPoster:
            return TranslationModel(uz: "Posterga yuborildi", ru: "Отправлено на постер", en: "Sent to poster")
        case .paid:
            return TranslationModel(uz: "To'lov amalga oshirildi", ru: "Оплата завершена", en: "Payment completed")
        case .update:
            return TranslationModel(uz: "Yangilandi", ru: "Обновлено", en: "Updated")
        case .changeStatus:
            return TranslationModel(uz: "Holat o'zgartirildi", ru: "Статус изменен", en: "Status changed")
        case .comment:
            return TranslationModel(uz: "Izoh yozildi", ru: "Комментарий получен", en: "Comment received")
        case .changeCourierStatus:
            return TranslationModel(uz: "Kuryer holati o'zgartirildi", ru: "Статус курьера изменен", en: "Courier status changed")
        case .changeCourierOrderStatus:
            return TranslationModel(uz: "Kuryer buyurtma holati o'zgartirildi", ru: "Статус заказа курьером изменён", en: "Courier order status changed")
        case .joinCourier:
            return TranslationModel(uz: "Kuryerga biriktirildi", ru: "Курьер назначен", en: "Courier assigned")
        case .changePaymentType:
            return TranslationModel(uz: "To'lov turi o'zgartirildi", ru: "Тип оплаты изменен", en: "Payment type changed")
        case .changeServiceType:
            return TranslationModel(uz: "Xizmat turi o'zgartirildi", ru: "Тип услуги изменен", en: "Service type changed")
        case .changeDeliveryType:
            return TranslationModel(uz: "Yetkazib berish turi o'zgartirildi", ru: "Тип доставки изменен", en: "Delivery type changed")
        case .posterError:
            return TranslationModel(uz: "Poster xatoligi", ru: "Ошибка постера", en: "Poster error")
        case .feedback:
            return TranslationModel(uz: "Fikr yozildi", ru: "Отзыв получен", en: "Feedback received")
        case .updateOperator:
            return TranslationModel(uz: "Operator yangilandi", ru: "Оператор обновлен", en: "Operator updated")
        case .collectorImage:
            return TranslationModel(uz: "Yig'uvchi mahsulot rasmini yangiladi", ru: "Сборщик обновил фотографию товара", en: "Collector updated product photo")
        case .courierPaid:
            return TranslationModel(uz: "Kuryer buyurtma uchun to'lov qildi", ru: "Курьер оплатил заказ", en: "Courier paid for the order")
        }
    }
}
