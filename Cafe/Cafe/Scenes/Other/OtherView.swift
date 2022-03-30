//
//  OtherView.swift
//  Cafe
//
//  Created by 이승후 on 2022/03/31.
//

import SwiftUI

struct OtherView: View {
    init() {
        UITableView.appearance().backgroundColor = .systemBackground
    }
    var body: some View {
        NavigationView {
            List {
                ForEach(Menu.allCases) { section in
                    Section(header: Text(section.title)
                    ) {
                        ForEach(section.menu, id:
                                    \.hashValue) { raw in
                            Text(raw)
                            // navigation으로 다른 뷰로 이동시킬 때 사용하는 코드
                            //NavigationLink(raw, destination: Text("\(raw)"))
                        }
                    }
                }
            }
            .listStyle(GroupedListStyle())
                .navigationTitle("Other")
                .toolbar {
                    NavigationLink(
                        destination: SettingView(),
                        label: {
                            Image(systemName: "gear")
                        })
                }
        }
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
