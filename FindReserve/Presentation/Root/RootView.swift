//
//  RootView.swift
//  FindReserve
//
//  Created by a on 11/5/25.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        TabView {
            MatchingView()
                .tabItem {
                    Image(systemName: "person.line.dotted.person")
                    Text("매칭")
                }
            
            MatchListView()
                .tabItem {
                    Image(systemName: "list.clipboard")
                    Text("정산 내역")
                }
            
            SettingView()
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("설정")
                }
        }
    }
}

#Preview {
    RootView()
}
