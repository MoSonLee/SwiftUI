//
//  CenterAPI(Alamofire).swift
//  FindCoronaCenter
//
//  Created by 이승후 on 2022/03/26.
//

import Foundation
import Combine
import Alamofire


enum APIError: Error {
case http(ErrorData)
case unknown
}

struct ErrorData: Codable {
    var statusCode: Int
    var message: String
    var error: String?
}

struct Agent {
    
    struct Response<T> {
        let value: T
        let response: URLResponse
    }
    
    func run<T: Decodable> (_ request: DataRequest, _ decoder: JSONDecoder = JSONDecoder()) -> AnyPublisher<Response<T>, APIError> {
        return request.validate().publishData(emptyResponseCodes: [200, 204, 205]).tryMap{
            result -> Response<T> in
            if let error = result.error {
                if let errorData = result.data {
                    let value = try decoder.decode(ErrorData.self, from: errorData)
                    throw APIError.http(value)
                }
                else {
                    throw error
                }
            }
            if let data = result.data {
                let value = try decoder.decode(T.self, from: data)
                return Response(value: value, response: result.response!)
            } else {
                return Response(value: Empty.emptyValue() as! T, response: result.response!)
            }
        }
        .mapError ({ (error) -> APIError in
            if let apiError = error as? APIError {
                return apiError
            } else {
                return .unknown
            }
        })
        .receive(on: DispatchQueue.main)
        .eraseToAnyPublisher()
    }
}


