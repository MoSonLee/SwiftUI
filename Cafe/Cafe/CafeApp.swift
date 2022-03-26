//
//  CafeApp.swift
//  Cafe
//
//  Created by 이승후 on 2022/03/26.
//

import SwiftUI

@main
struct CafeApp: App {
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .accentColor(.green)
        }
    }
}
