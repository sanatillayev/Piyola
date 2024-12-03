//
//  String+Extension.swift
//
//
//  Created by Bilol Sanatillayev on 03/06/24.
//

import Foundation
import UIKit

public extension Numeric {
    var currencyFormat: String {
        "\(displayFormat) \(L10n.Common.uzs)"
    }
    
    var displayFormat: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.groupingSeparator = " "
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 0
        formatter.roundingMode = .halfUp
        return formatter.string(for: self) ?? ""
    }
}

public extension String {
    func getPrice() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.groupingSeparator = " "
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 0
        
        if let number = Int(self), let formattedString = formatter.string(from: NSNumber(value: number)) {
            return formattedString
        } else { 
//            assertionFailure("Failed to parse date string")
            return self
        }
    }
    
    func toTime() -> String {
        let isoFormatterWithFractionalSeconds = ISO8601DateFormatter()
        isoFormatterWithFractionalSeconds.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        
        let isoFormatterWithoutFractionalSeconds = ISO8601DateFormatter()
        isoFormatterWithoutFractionalSeconds.formatOptions = [.withInternetDateTime]
        
        let basicISOFormatter = ISO8601DateFormatter()
        basicISOFormatter.formatOptions = [.withFullDate, .withTime, .withColonSeparatorInTime]
        
        let outputFormatter = DateFormatter()
        outputFormatter.locale = UIDevice.current.locale
        outputFormatter.dateFormat = "d MMMM, HH:mm"
        
        if let date = isoFormatterWithFractionalSeconds.date(from: self) {
            return outputFormatter.string(from: date)
        }
        
        if let date = isoFormatterWithoutFractionalSeconds.date(from: self) {
            return outputFormatter.string(from: date)
        }
        
        if let date = basicISOFormatter.date(from: self) {
            return outputFormatter.string(from: date)
        }
        
        return self
    }
    
    func toDay() -> String {
        let inputFormatter = DateFormatter()
        inputFormatter.locale = UIDevice.current.locale
        inputFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSSSSZ"
        
        let outputFormatter = DateFormatter()
        outputFormatter.locale = UIDevice.current.locale
        outputFormatter.dateFormat = "d MMMM"
        
        guard let date = inputFormatter.date(from: self) else { 
            assertionFailure("Failed to parse date string")
            return self }
        let outputString = outputFormatter.string(from: date)
        return outputString
    }
    func toHour() -> String {
        let isoFormatterWithFractionalSeconds = ISO8601DateFormatter()
        isoFormatterWithFractionalSeconds.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        
        let isoFormatterWithoutFractionalSeconds = ISO8601DateFormatter()
        isoFormatterWithoutFractionalSeconds.formatOptions = [.withInternetDateTime]
        
        let basicISOFormatter = ISO8601DateFormatter()
        basicISOFormatter.formatOptions = [.withFullDate, .withTime, .withColonSeparatorInTime]
        
        let outputFormatter = DateFormatter()
        outputFormatter.locale = UIDevice.current.locale
        outputFormatter.dateFormat = "HH:mm"
        
        if let date = isoFormatterWithFractionalSeconds.date(from: self) {
            return outputFormatter.string(from: date)
        }
        
        if let date = isoFormatterWithoutFractionalSeconds.date(from: self) {
            return outputFormatter.string(from: date)
        }
        
        if let date = basicISOFormatter.date(from: self) {
            return outputFormatter.string(from: date)
        }
//        assertionFailure("Failed to parse date string")
        return self
    }

    
    func toISODate() -> String {
        let inputFormatter = DateFormatter()
        inputFormatter.locale = UIDevice.current.locale
        inputFormatter.dateFormat = "dd.MM.yyyy"
        
        let outputFormatter = DateFormatter()
        outputFormatter.locale = UIDevice.current.locale
        outputFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSSSSZZZZZ"
        
        guard let date = inputFormatter.date(from: self) else { 
            assertionFailure("Failed to parse date string")
            return self }
        let outputString = outputFormatter.string(from: date)
        return outputString
    }
    
    func convertToISOFormat() -> String {
        let inputFormatter = DateFormatter()
        inputFormatter.locale = UIDevice.current.locale
        inputFormatter.dateFormat = "HH:mm, d MMMM, yyyy"
        
        let currentYear = Calendar.current.component(.year, from: Date())
        let fullDateString = "\(self), \(currentYear)"
        
        guard let date = inputFormatter.date(from: fullDateString) else {
            print("Failed to parse date string")
            assertionFailure("Failed to parse date string")
            return self
        }
        
        let isoFormatter = DateFormatter()
        isoFormatter.locale = UIDevice.current.locale
        isoFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSSSSZZZZZ"
        
        let isoString = isoFormatter.string(from: date)
        return isoString
    }
    
    func toShortDate() -> String {
        let isoFormatterWithFractionalSeconds = ISO8601DateFormatter()
        isoFormatterWithFractionalSeconds.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        
        let isoFormatterWithoutFractionalSeconds = ISO8601DateFormatter()
        isoFormatterWithoutFractionalSeconds.formatOptions = [.withInternetDateTime]
        
        let outputFormatter = DateFormatter()
        outputFormatter.locale = UIDevice.current.locale
        outputFormatter.dateFormat = "dd.MM.yyyy"
        
        if let date = isoFormatterWithFractionalSeconds.date(from: self) {
            return outputFormatter.string(from: date)
        }
        
        if let date = isoFormatterWithoutFractionalSeconds.date(from: self) {
            return outputFormatter.string(from: date)
        }
        
        assertionFailure("Failed to parse date string")
        return self
    }

    
    func toShortDate() -> Date {
        let isoFormatter = ISO8601DateFormatter()
        isoFormatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        let backupISOFormatter = ISO8601DateFormatter()
        backupISOFormatter.formatOptions = [.withInternetDateTime]

        if let date = isoFormatter.date(from: self) {
            return date
        }
        
        if let date = backupISOFormatter.date(from: self) {
            return date
        }
        
        assertionFailure("Failed to parse date string")
        return Date()
    }
    
    
    func toOrderHour() -> String {
        let isoFormatterWithFractionalSeconds = ISO8601DateFormatter()
        isoFormatterWithFractionalSeconds.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        
        let isoFormatterWithoutFractionalSeconds = ISO8601DateFormatter()
        isoFormatterWithoutFractionalSeconds.formatOptions = [.withInternetDateTime]
        
        let basicISOFormatter = ISO8601DateFormatter()
        basicISOFormatter.formatOptions = [.withFullDate, .withTime, .withColonSeparatorInTime]
        
        let timeOnlyFormatter = DateFormatter()
        timeOnlyFormatter.locale = UIDevice.current.locale
        timeOnlyFormatter.dateFormat = "HH:mm"
        
        let dateAndTimeFormatter = DateFormatter()
        dateAndTimeFormatter.locale = UIDevice.current.locale
        dateAndTimeFormatter.dateFormat = "HH:mm, d.MM"
        
        let parsedDate: Date?
        if let date = isoFormatterWithFractionalSeconds.date(from: self) {
            parsedDate = date
        } else if let date = isoFormatterWithoutFractionalSeconds.date(from: self) {
            parsedDate = date
        } else if let date = basicISOFormatter.date(from: self) {
            parsedDate = date
        } else {
            print("Failed to parse date: \(self)")
            return self
        }
        
        guard let date = parsedDate else { return self }
        let calendar = Calendar.current
        if calendar.isDateInToday(date) {
            return timeOnlyFormatter.string(from: date)
        } else {
            return dateAndTimeFormatter.string(from: date)
        }
    }
    
    func toFullTime() -> String {
        let isoFormatterWithFractionalSeconds = ISO8601DateFormatter()
        isoFormatterWithFractionalSeconds.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        
        let isoFormatterWithoutFractionalSeconds = ISO8601DateFormatter()
        isoFormatterWithoutFractionalSeconds.formatOptions = [.withInternetDateTime]
        
        let basicISOFormatter = ISO8601DateFormatter()
        basicISOFormatter.formatOptions = [.withFullDate, .withTime, .withColonSeparatorInTime]
        
        let timeOnlyFormatter = DateFormatter()
        timeOnlyFormatter.locale = UIDevice.current.locale
        timeOnlyFormatter.dateFormat = "HH:mm"
        
        let dateAndTimeFormatter = DateFormatter()
        dateAndTimeFormatter.locale = UIDevice.current.locale
        dateAndTimeFormatter.dateFormat = "dd.MM.yyyy, HH:mm"
        
        let parsedDate: Date?
        if let date = isoFormatterWithFractionalSeconds.date(from: self) {
            parsedDate = date
        } else if let date = isoFormatterWithoutFractionalSeconds.date(from: self) {
            parsedDate = date
        } else if let date = basicISOFormatter.date(from: self) {
            parsedDate = date
        } else {
            print("Failed to parse date: \(self)")
            return self
        }
        
        guard let date = parsedDate else { return self }
        let calendar = Calendar.current
        if calendar.isDateInToday(date) {
            return timeOnlyFormatter.string(from: date)
        } else {
            return dateAndTimeFormatter.string(from: date)
        }
    }
}
public extension String {
    func discountAttributedText(viewData: LabelViewData = LabelViewData.caption1) -> NSAttributedString {
        NSAttributedString(string: self, attributes: [
            .font : viewData.font, .foregroundColor : viewData.textColor,
            .strikethroughStyle : NSUnderlineStyle.single.rawValue])//, .strikethroughColor: viewData.textColor
    }
}

public struct LabelViewData {
    public let text: String?
    public let font: UIFont
    public let textColor: UIColor
    public let textAlignment: NSTextAlignment
    public let numberOfLines: Int
    
    public init(
        text: String? = nil,
        font: UIFont = .systemFont(ofSize: 16),
        textColor: UIColor = .label,
        textAlignment: NSTextAlignment = .natural,
        numberOfLines: Int = 1
    ) {
        self.font = font
        self.textColor = textColor
        self.text = text
        self.textAlignment = textAlignment
        self.numberOfLines = numberOfLines
    }
}

public extension LabelViewData {
    func copy(
        text: String? = nil,
        font: UIFont? = nil,
        textColor: UIColor? = nil,
        textAlignment: NSTextAlignment? = nil,
        numberOfLines: Int? = nil
        
    ) -> LabelViewData {
        LabelViewData(
            text: text ?? self.text,
            font: font ?? self.font,
            textColor: textColor ?? self.textColor,
            textAlignment: textAlignment ?? self.textAlignment,
            numberOfLines: numberOfLines ?? self.numberOfLines
        )
    }
}


public extension LabelViewData {
    static func body(textColor: UIColor = Colors.Text.primary.color, text: String? = nil) -> LabelViewData {
        LabelViewData(text: text, font: .appRegular(at: 14), textColor: textColor)
    }
    static let body = body()
    static func caption1(textColor: UIColor = Colors.Text.secondary.color, text: String? = nil) -> LabelViewData {
        LabelViewData(text: text, font: .appRegular(at: 12), textColor: textColor)
    }
    static let caption1 = caption1()
}
