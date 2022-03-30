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
                Section {
                Text("1")
                Text("2")
                Text("3")
                }
                
                Section {
                Text("1")
                Text("2")
                Text("3")
                }
            }
            .listStyle(GroupedListStyle())
                .navigationTitle("Other")
                .toolbar {
                    NavigationLink(
                        destination: Text("Destination"),
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
