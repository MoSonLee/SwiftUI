//
//  SettingView.swift
//  Cafe
//
//  Created by 이승후 on 2022/03/31.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        List {
            Section {
                SettingUSerInfoSectionView()
            }
            Button("회원 정보 수정"){}
                .accentColor(.black)
            Button("회원 탈퇴"){}
                .accentColor(.black)
        }
        .navigationTitle("설정")
        .listStyle(GroupedListStyle())
    }
}

struct SettingUSerInfoSectionView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4.0){
                Text(User.shaerd.username)
                    .font(.title)
                Text(User.shaerd.account)
                    .font(.caption)
            }
            Spacer()
            Button(action: {}) {
                Text("로그아웃")
                    .accentColor(.green)
                    .font(.system(size: 14.0, weight: .bold, design: .default))
            }
            .padding(8.0)
            .overlay(Capsule().stroke(Color.green))
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
