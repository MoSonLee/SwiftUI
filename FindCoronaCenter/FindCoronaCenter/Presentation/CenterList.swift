//
//  CenterList.swift
//  FindCoronaCenter
//
//  Created by 이승후 on 2022/04/04.
//

import SwiftUI

struct CenterList: View {
    var centers = [Center]()
    
    var body: some View {
        List(centers, id: \.id) { center in
            CenterRow(center: center)
        }
//        .navigationTitle(center.sido.rawValue)
    }
}

struct CenterList_Previews: PreviewProvider {
    static var previews: some View {
        let centers = [
            Center(id: 0, sido: .경기도, facilityName: "실내빙상장 앞", address: "경기도 하남시 뭐뭐구", lat: "37.404476", lng: "126.9491998", centerType: .central, phoneNumber: "010-0000-0000")
            
        ]
        
        CenterList()
    }
}
