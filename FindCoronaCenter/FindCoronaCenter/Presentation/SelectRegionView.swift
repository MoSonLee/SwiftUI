//
//  SelectRegionView.swift
//  FindCoronaCenter
//
//  Created by 이승후 on 2022/04/04.
//

import SwiftUI

struct SelectRegionView: View {
    @ObservedObject var viewModel = SelectRegionViewModel()
    private var items: [GridItem] {
        Array(repeating: .init(.flexible(minimum: 80)), count: 2)
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: items, spacing:  20) {
                    ForEach(Center.Sido.allCases, id: \.id) {
                        sido in
                        let centers = viewModel.centers[sido] ?? []
                        NavigationLink(destination: CenterList(centers: centers)) {
                            SelectRegionItem(region: sido, count: centers.count)
                        }
                    }
                }
                .padding()
                .navigationTitle("Corona19 예방접종 Center")
            }
        }
    }
}

struct SelectRegionView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = SelectRegionViewModel()
        SelectRegionView(viewModel: viewModel)
    }
}
