//
//  HomeView.swift
//  Cafe
//
//  Created by 이승후 on 2022/03/29.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel = HomeViewModewl()
    
    var body: some View {
        ScrollView(.vertical) {
            Spacer(minLength: 30)
            HomeHeaderView(isNeedToReload: $viewModel.isNeedToReload)
            Spacer(minLength: 30)
            MenuSuggestionSectionView(coffeeMenu: $viewModel.coffeeMenu)
            Spacer(minLength: 30)
            EventsSectionView(events: $viewModel.events)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
