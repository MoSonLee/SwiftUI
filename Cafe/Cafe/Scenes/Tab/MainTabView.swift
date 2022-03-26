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

//struct MainTabBiew_Previews : PreviewProvider {
//    static var previews: some View {
//        MainTabView()
//    }
//}


//Hstack

struct SampleListView: View {
    
    struct Number: Identifiable {
        let value: Int
        var id: Int { value }
    }
    let numbers: [Number] = (0...100).map { Number(value: $0) }
    var body: some View {
        List {
            Section(header: Text("Header")) {
                ForEach( numbers) { number in
                    Text("\(number.value)")
                }
            }
            Section(header: Text("Second Header"), footer: Text("Footer")) {
                ForEach( numbers) { number in
                    Text("\(number.value)")
                }
            }
        }
    }
}
    struct SampleListView_Previews: PreviewProvider {
        static var previews: some View {
            SampleListView()
        }
    }
    

