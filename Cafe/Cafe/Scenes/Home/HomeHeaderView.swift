//
//  HomeHeaderView.swift
//  Cafe
//
//  Created by 이승후 on 2022/03/29.
//

import SwiftUI

struct HomeHeaderView: View {
    @Binding var isNeedToReload: Bool
    var body: some View {
        VStack(spacing: 16.0) {
            HStack(alignment: .top) {
                Text("""
                     \(User.shaerd.username)님~
                     반갑습니다!☕️
                     """)
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                Button(action: {
                    isNeedToReload = true
                }, label: {
                    Image(systemName: "arrow.2.circlepath")
                })
            }
            HStack {
                Button(action: {}) {
                    Image(systemName: "mail")
                        .foregroundColor(.secondary)
                    Text("What's New")
                        .foregroundColor(.primary)
                        .font(.system(size: 16.0, weight: .semibold, design: .default))
                }
                Spacer()
                Button(action: {}) {
                    Image(systemName: "ticket")
                        .foregroundColor(.secondary)
                    Text("Coupon")
                        .foregroundColor(.primary)
                        .font(.system(size: 16.0, weight: .semibold, design: .default))
                }
                Spacer()
                Button(action: {}) {
                    Image(systemName: "bell")
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding(16.0)
    }
}
