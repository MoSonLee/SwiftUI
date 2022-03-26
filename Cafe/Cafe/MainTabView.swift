//
//  ContentView.swift
//  Cafe
//
//  Created by 이승후 on 2022/03/26.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("Home")
                .tabItem {
                    Tab.home.imageItem
                    Tab.home.tabTextItem
                }
            Text("Other")
                .tabItem {
                    Tab.other.imageItem
                    Tab.other.tabTextItem
                }
        }
    }
}

struct MainTabBiew_Previews : PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
