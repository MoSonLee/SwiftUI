//
//  Event.swift
//  Cafe
//
//  Created by 이승후 on 2022/03/27.
//

import SwiftUI

struct Event: Identifiable {
    let id = UUID()
    let image: Image
    let title: String
    let description: String
}
