//
//  swiftUI_memoAppApp.swift
//  swiftUI_memoApp
//
//  Created by 이승후 on 2022/04/05.
//

import SwiftUI

@main
struct swiftUI_memoAppApp: App {
    
    @State var store = MemoStore()
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store)
        }
    }
}
