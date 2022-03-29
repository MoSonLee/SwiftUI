//
//  HomeHeaderView.swift
//  Cafe
//
//  Created by 이승후 on 2022/03/29.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Text("패캠님~")
                    .frame(width: .infinity, height: 30, alignment: .topLeading)
                    .lineLimit(2)
                
            }
            HStack {
                Button(
            
            }
        }
       
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}
