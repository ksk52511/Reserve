//
//  SettingViewModel.swift
//  FindReserve
//
//  Created by a on 11/11/25.
//

import Combine

class SettingViewModel: ObservableObject {
    @Published var name = ""
    @Published var phoneNumber = ""
    @Published var account = ""
    
    func getUserInfo() {
        if let user = KeyChainManager.getUser() {
            name = user.name
            phoneNumber = user.phoneNumber
            account = user.account
        }
    }
    
    func saveUserInfo() {
        let userInfo = User(name: name, phoneNumber: phoneNumber, account: account)
        KeyChainManager.saveUser(userInfo)
    }
}
