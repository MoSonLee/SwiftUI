//
//  Tab.swift
//  Cafe
//
//  Created by 이승후 on 2022/03/26.
//

import SwiftUI

enum Tab {
    case home
    case other
    
    var tabTextItem: Text {
        switch self {
        case .home: return Text("Home")
        case .other: return Text("Other")
        
        }
    }
    var imageItem: Image {
        switch self {
        case .home: return  Image(systemName: "house.fill")
        case .other: return Image(systemName: "ellipsis")
        }
    }
}
