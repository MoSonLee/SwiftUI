import UIKit
import Combine

//let publisher = Just("LeeSeunghoo")
//
//let subscriber = publisher.sink { (value) in
//    print(value)
//}
//
//let subscriber2 = publisher.sink { (result) in
//    switch result {
//    case .finished:
//        print("finished")
//    case .failure(let error):
//        print(error.localizedDescription)
//    }
//} receiveValue: { (value) in
//    print(value)
//}
//protocol Subject: AnyObject, Publisher {}
//
//let currentValueSubject = CurrentValueSubject<String, Never>("leeseunghoo") // 초기 값을 넣어줘야 함
//let subscriber = currentValueSubject.sink(receiveValue: {
//    print($0)
//})

//currentValueSubject.value = "이승후"
//currentValueSubject.send("승후")

let passthroughSubject = PassthroughSubject<String,Never>()
let subscriber = passthroughSubject.sink { (result) in
    switch result {
    case .finished:
        print("finished")
    case .failure(let error):
        print(error.localizedDescription)
    }
} receiveValue: { (value) in
    print(value)
}

passthroughSubject.send("이승후")
passthroughSubject.send("승후")

passthroughSubject.send(completion: .finished)
passthroughSubject.send("끝났음")
