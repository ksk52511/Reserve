//
//  MatchingViewModel.swift
//  FindReserve
//
//  Created by a on 11/11/25.
//

import Combine

class MatchingViewModel: ObservableObject {
    @Published var userName = ""
    
    func getUserInfo() {
        if let user = KeyChainManager.getUser() {
            self.userName = user.name
        }
    }
}
