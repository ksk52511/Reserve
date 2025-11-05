//
//  MatchListViewModel.swift
//  FindReserve
//
//  Created by a on 11/6/25.
//

import Combine

class MatchListViewModel: ObservableObject {
    // 더미데이터
    @Published var payments: [Payment] = [
        Payment(date: "2025.11.01", from: "용인시 보라동", to: "운학 과학화 훈련장", isPaid: false),
        Payment(date: "2025.11.02", from: "용인시 보라동", to: "운학 과학화 훈련장", isPaid: true),
        Payment(date: "2025.11.03", from: "용인시 보라동", to: "운학 과학화 훈련장", isPaid: true)
    ]
    
}
