//
//  CenterAPIResponse.swift
//  FindCoronaCenter
//
//  Created by 이승후 on 2022/03/25.
//

import Foundation

struct CenterAPIResponse: Decodable {
    let data: [Center]
}
