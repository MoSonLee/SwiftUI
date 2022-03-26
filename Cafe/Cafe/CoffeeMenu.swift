//
//  CoffeeMenu.swift
//  Cafe
//
//  Created by 이승후 on 2022/03/26.
//

import SwiftUI
struct CoffeeMenu: Identifiable {
    let image: Image
    let name: String
    let id = UUID()
    
    static let sample: [CoffeeMenu] = [
        CoffeeMenu(image: Image("coffee"), name: "아메리카노"),
        CoffeeMenu(image: Image("ice americano"), name: "아이스 아메리카노"),
        CoffeeMenu(image: Image("cafe late"), name: "카페라뗴"),
        CoffeeMenu(image: Image("ice cafe late"), name: "아이스 카페라뗴"),
        CoffeeMenu(image: Image("drip coffee"), name: "드립커피"),
        CoffeeMenu(image: Image("ice drip coffee"), name: "아이스 드립커피")
    ]
}
