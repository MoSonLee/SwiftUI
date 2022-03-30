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
    
    static let sample: [Event] = [
        Event(image: Image("coffee"), title: "제주도 한정 메뉴", description: "제주도 한정 음료가 출시되었습니다. 꼭 드셔보세요"),
    Event(image: Image("ice drip coffee"), title: "여름 한정 메뉴", description: "여름 한정 음료가 아이스 드립 커피 출시되었습니다. 꼭 드셔보세요")
    ]
}
