//
//  JSONEncoderFactory.swift
//
//
//  Created by Asilbek Isakov on 5/7/24.
//

import Foundation

public enum JSONEncoderFactory {
    private static var _encoder: JSONEncoder?
    public static var encoder: JSONEncoder {
        if let _encoder {
            return _encoder
        }
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .iso8601
        _encoder = encoder
        return encoder
    }
}
