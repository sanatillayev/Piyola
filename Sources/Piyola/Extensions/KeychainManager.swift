//
//  KeychainManager.swift
//
//
//  Created by Bilol Sanatillayev on 18/07/24.
//

import Foundation
import Security

public final class KeychainManager {
    public init() {}
    
    enum KeychainError: Error {
        case duplicateEntry
        case unknown(OSStatus)
    }
    
    func saveToken(_ token: String, forKey key: String) throws {
        if let data = token.data(using: .utf8) {
            let query: [String: Any] = [
                kSecAttrAccount as String: key,
                kSecValueData as String: data,
                kSecClass as String: kSecClassGenericPassword
            ]
            
            let status = SecItemAdd(query as CFDictionary, nil)
            
            if status == errSecDuplicateItem {
                let query = [
                    kSecAttrAccount as String: key,
                    kSecClass as String: kSecClassGenericPassword
                ] as CFDictionary
                
                let attributesToUpdate = [kSecValueData as String: data] as CFDictionary
                
                let updateStatus = SecItemUpdate(query, attributesToUpdate)
                guard updateStatus == errSecSuccess else {
                    throw KeychainError.unknown(updateStatus)
                }
            } else {
                guard status == errSecSuccess else {
                    throw KeychainError.unknown(status)
                }
            }
        }
    }
    
    func getToken(forKey key: String) -> String? {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrAccount as String: key,
            kSecReturnData as String: true,
            kSecMatchLimit as String: kSecMatchLimitOne
        ]
        
        var dataTypeRef: AnyObject?
        let status = SecItemCopyMatching(query as CFDictionary, &dataTypeRef)
        
        if status == errSecSuccess, let data = dataTypeRef as? Data {
            return String(data: data, encoding: .utf8)
        }
        return nil
    }
    
    func delete(for key: String) {
        let query = [
            kSecAttrAccount: key,
            kSecClass: kSecClassGenericPassword
        ] as CFDictionary
        SecItemDelete(query)
    }
    
    // MARK: - app token
    
    private let tokenKey = "uz.collector.app"
    
    public var token: String? {
        getToken(forKey: tokenKey)
    }
    
    public func saveToken(_ token: String) throws {
        try saveToken(token, forKey: tokenKey)
    }
    
    public func deleteToken() {
        delete(for: tokenKey)
    }
}
