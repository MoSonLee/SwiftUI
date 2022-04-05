//
//  Memo.swift
//  swiftUI_memoApp
//
//  Created by 이승후 on 2022/04/05.
//

import Foundation


class Memo: Identifiable, ObservableObject {
    let id: UUID
    @Published var content: String
    let insertDate: Date
    
    init(content: String, insertDate: Date = Date.now) {
        id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
}
