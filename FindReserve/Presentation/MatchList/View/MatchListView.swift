//
//  MatchListView.swift
//  FindReserve
//
//  Created by a on 11/5/25.
//

import SwiftUI

struct MatchListView: View {
    @StateObject var viewModel = MatchListViewModel()

    var body: some View {
        NavigationStack {
            List(viewModel.payments) { item in
                HStack {
                    VStack(alignment: .leading, spacing: 6) {
                        Text(item.date)
                            .font(.caption)
                            .foregroundColor(.gray)
                        Text("\(item.from) → \(item.to)")
                            .fontWeight(.semibold)
                    }
                    Spacer()
                    Text(item.isPaid ? "정산완료" : "미정산")
                        .font(.caption)
                        .foregroundColor(.white)
                        .padding(6)
                        .background(item.isPaid ? Color.green : Color.red)
                        .cornerRadius(6)
                }
                .padding(.vertical, 6)
            }
            .navigationTitle("내 정산 내역")
        }
    }
}
