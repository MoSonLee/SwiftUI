//
//  MenuSuggestionSectionView.swift
//  Cafe
//
//  Created by 이승후 on 2022/03/26.
//

import SwiftUI

struct MenuSuggestionSectionView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Text("\(User.shaerd.username)님을 위한 추천메뉴")
                        .font(.headline)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                LazyHStack {
                    ForEach(CoffeeMenu.sample) {
                        menu in  MenuSuggestionItemView(coffeMenu: menu)
                    }
                }
            }
        }
        .padding(.horizontal, 16.0)
    }
}

struct MenuSuggestionItemView: View {
    let coffeMenu: CoffeeMenu
    var body: some View {
        VStack {
            coffeMenu.image
                .resizable()
                .clipShape(Circle())
                .frame(width: 100.0, height: 100.0)
            Text(coffeMenu.name)
                .font(.caption)
        }
    }
}

struct MenuSuggestionSectionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuSuggestionSectionView()
    }
}
