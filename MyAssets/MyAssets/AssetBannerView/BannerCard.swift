//
//  BannerCard.swift
//  MyAssets
//
//  Created by 이승후 on 2022/03/24.
//

import SwiftUI

struct BannerCard: View {
    var banner: AssetBanner
    
    var body: some View {
//        ZStack {
//            Color(banner.backgroundColor)
//            VStack {
//                Text(banner.title)
//                    .font(.title)
//                Text(banner.description)
//                    .font(.subheadline)
//            }
//        }
        Color(banner.backgroundColor)
            .overlay(
                VStack {
                    Text(banner.title)
                        .font(.title)
                    Text(banner.description)
                        .font(.subheadline)
                }
            )
    }
}

struct BannerCard_Previews: PreviewProvider {
    static var previews: some View {
        let banner0 = AssetBanner(title: "공지사항", description: "추가된 공지사항을 확인하세요", backgroundColor: .red)
        BannerCard(banner: banner0)
    }
}
