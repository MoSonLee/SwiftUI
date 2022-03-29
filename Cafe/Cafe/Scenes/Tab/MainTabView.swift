//
//  MainTabView.swift
//  Cafe
//
//  Created by 이승후 on 2022/03/29.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
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

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
