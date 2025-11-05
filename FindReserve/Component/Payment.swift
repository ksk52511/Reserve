//
//  Payment.swift
//  FindReserve
//
//  Created by a on 11/6/25.
//

import Foundation

struct Payment: Identifiable {
    let id = UUID()
    let date: String
    let from: String
    let to: String
    let isPaid: Bool
}
