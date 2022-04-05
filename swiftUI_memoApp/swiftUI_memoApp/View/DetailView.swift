//
//  DetailView.swift
//  swiftUI_memoApp
//
//  Created by 이승후 on 2022/04/06.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var memo: Memo
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
