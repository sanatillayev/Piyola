//
//  JSONDecoderFactory.swift
//  
//
//  Created by Asilbek Isakov on 5/7/24.
//

import Foundation

public enum JSONDecoderFactory {
    private static var _decoder: JSONDecoder?
    public static var decoder: JSONDecoder {
        if let _decoder {
            return _decoder
        }
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        _decoder = decoder
        return decoder
    }
}
