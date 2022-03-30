//
//  HomeView.swift
//  Cafe
//
//  Created by 이승후 on 2022/03/29.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical) {
            Spacer(minLength: 30)
            HomeHeaderView()
            Spacer(minLength: 30)
            MenuSuggestionSectionView()
            Spacer(minLength: 30)
            EventsSectionView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
