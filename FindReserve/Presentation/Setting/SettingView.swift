//
//  SettingView.swift
//  FindReserve
//
//  Created by a on 11/5/25.
//

import SwiftUI

struct SettingView: View {
    @State private var name: String = "예비군"
    @State private var phone: String = "010-1234-5678"
    @State private var account: String = "123-456-7890"

    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("내 정보")) {
                    TextField("이름", text: $name)
                    TextField("전화번호", text: $phone)
                        .keyboardType(.phonePad)
                    TextField("계좌번호", text: $account)
                        .keyboardType(.numberPad)
                }
                
                Section {
                    Button(action: {
        
                        print("저장됨: \(name), \(phone), \(account)")
                    }) {
                        Text("저장")
                            .foregroundColor(.blue)
                    }
                }
            }
        }
    }
}
