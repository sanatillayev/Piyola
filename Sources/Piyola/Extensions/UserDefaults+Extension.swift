//
//  UserDefaults+Extension.swift
//
//
//  Created by Bilol Sanatillayev on 16/07/24.
//

import Foundation

public extension UserDefaults {
    subscript(key: String) -> Any? {
        get { return object(forKey: key) }
        set { set(newValue, forKey: key) }
    }
    
    func object<T: Decodable>(for key: String, decoder: JSONDecoder) -> T? {
        guard let object = self[key], let data = object as? Data else { return nil }
        return try? decoder.decode(T.self, from: data)
    }
    
    func setObject<T: Encodable>(_ object: T?, for key: String, encoder: JSONEncoder) {
        guard let object = object, let data = try? encoder.encode(object) else {
            removeObject(forKey: key)
            return
        }
        set(data, forKey: key)
    }
    
    func array<T: Decodable>(for key: String, decoder: JSONDecoder) -> [T]? {
        guard let object = self[key], let data = object as? Data else { return nil }
        return try? decoder.decode([T].self, from: data)
    }
    
    func setArray<T: Encodable>(_ array: [T]?, for key: String, encoder: JSONEncoder) {
        guard let array = array, let data = try? encoder.encode(array) else {
            removeObject(forKey: key)
            return
        }
        set(data, forKey: key)
    }
}
