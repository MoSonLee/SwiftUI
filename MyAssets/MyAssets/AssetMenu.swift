//
//  AssetMenu.swift
//  MyAssets
//
//  Created by 이승후 on 2022/03/24.
//

import Foundation
import QuartzCore
import SwiftUI

enum AssetMenu: String, Identifiable, Decodable {
case creditScore
case bankAcount
case investment
case loan
case insurance
case creditCard
case cash
case realEstate
    
    var id: String {
        return self.rawValue
    }
    var systemImageName: String {
        switch self{
        case .creditScore:
            return "number.circle"
        case .bankAcount:
            return "banknote"
        case .investment:
            return "bitcoinsign.circle"
        case .loan:
            return "hand.wave"
        case .insurance:
            return "lock.sheild"
        case .creditCard:
            return "creditcard"
        case .cash:
            return "dollarsign.circle"
        case .realEstate:
            return "house.fill"
        }
    }
    
    var title: String {
        switch self {
        case.creditScore:
            return "신용점수"
        case .bankAcount:
            return "계좌"
        case .investment:
            return "투자"
        case .loan:
            return "대출"
        case .insurance:
            return "보험"
        case .creditCard:
            return "카드"
        case .cash:
            return "현금영수증"
        case .realEstate:
            return "부동산"
        }
    }
}
