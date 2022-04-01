//
//  HomeViewModel.swift
//  Cafe
//
//  Created by 이승후 on 2022/04/01.
//

import SwiftUI

class HomeViewModewl: ObservableObject {
    
    @Published var isNeedToReload = false{
        didSet {
            guard isNeedToReload else { return }
            coffeeMenu.shuffle()
            events.shuffle()
            
            isNeedToReload = false
        }
    }
    @Published var coffeeMenu: [CoffeeMenu] = [
        CoffeeMenu(image: Image("coffee"), name: "아메리카노"),
        CoffeeMenu(image: Image("ice americano"), name: "아이스 아메리카노"),
        CoffeeMenu(image: Image("cafe late"), name: "카페라뗴"),
        CoffeeMenu(image: Image("ice cafe late"), name: "아이스 카페라뗴"),
        CoffeeMenu(image: Image("drip coffee"), name: "드립커피"),
        CoffeeMenu(image: Image("ice drip coffee"), name: "아이스 드립커피")
    ]
    
    @Published var events: [Event] = [
        Event(image: Image("coffee"), title: "제주도 한정 메뉴", description: "제주도 한정 음료가 출시되었습니다. 꼭 드셔보세요"),
        Event(image: Image("ice drip coffee"), title: "여름 한정 메뉴", description: "여름 한정 음료가 아이스 드립 커피 출시되었습니다. 꼭 드셔보세요")
    ]
    
}

