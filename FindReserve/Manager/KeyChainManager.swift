//
//  KeyChainManager.swift
//  FindReserve
//
//  Created by a on 11/11/25.
//

import Security
import Foundation

enum KeyChainKey: String {
    case user
}

final class KeyChainManager {
    @discardableResult
    static func saveUser(_ user: User) -> Bool {
        do {
            let data = try JSONEncoder().encode(user)
            
            let query: [String: Any] = [
                kSecClass as String: kSecClassGenericPassword,
                kSecAttrAccount as String: KeyChainKey.user.rawValue
            ]
            
            let attributesToUpdate = [kSecValueData as String: data]
            let status = SecItemUpdate(query as CFDictionary, attributesToUpdate as CFDictionary)
            
            if status == errSecItemNotFound {
                var addQuery = query
                addQuery[kSecValueData as String] = data
                addQuery[kSecAttrAccessible as String] = kSecAttrAccessibleWhenUnlockedThisDeviceOnly
                let addStatus = SecItemAdd(addQuery as CFDictionary, nil)
                return addStatus == errSecSuccess
            }
            
            return status == errSecSuccess
        } catch {
            print("Failed to encode")
            return false
        }
    }
    
    static func getUser() -> User? {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrAccount as String: KeyChainKey.user.rawValue,
            kSecReturnData as String: true,
            kSecMatchLimit as String: kSecMatchLimitOne
        ]
        
        var item: CFTypeRef?
        let status = SecItemCopyMatching(query as CFDictionary, &item)
        
        guard status == errSecSuccess,
              let data = item as? Data else {
            return nil
        }
        
        return try? JSONDecoder().decode(User.self, from: data)
    }
    
    static func deleteUser() {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrAccount as String: KeyChainKey.user.rawValue
        ]
        SecItemDelete(query as CFDictionary)
    }
}
