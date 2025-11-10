//
//  User.swift
//  FindReserve
//
//  Created by a on 11/11/25.
//

import SwiftData

@Model
final class User {
    var name: String
    var phoneNumber: String
    var account: String
    
    init(name: String, phoneNumber: String, account: String) {
        self.name = name
        self.phoneNumber = phoneNumber
        self.account = account
    }
}
