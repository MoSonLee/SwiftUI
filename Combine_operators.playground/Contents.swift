import Combine
import SwiftUI
// map
//let publisher = [1,2,3,4,5].publisher
//let cancellable = publisher
//    .map { $0 }
//    .sink(receiveValue: { print( $0) })

// tryMap
//let tryPublisher = [1,2,3,4].publisher
//let tryCancellable = tryPublisher.tryMap{ $0 * 3 }
//    .sink(receiveCompletion: {
//        switch $0 {
//        case .finished:
//            print("done")
//        case .failure(let error):
//            print(error.localizedDescription)
//        }
//    }, receiveValue: {print($0)})

//public struct WeatherStation {
//    public let stationID: String
//}
//
//var weatherPublisher = PassthroughSubject<WeatherStation, URLError>()
//
//let cancellable = weatherPublisher.flatMap(maxPublishers: .max(1), { station -> URLSession.DataTaskPublisher in
//    let url = URL(string:"https://weatherapi.example.com/stations/\(station.stationID)/observations/latest")!
//
//    return URLSession.shared.dataTaskPublisher(for: url)
//}).sink(
//    receiveCompletion: { completion in
//        print(completion)
//    },
//    receiveValue: {
//        print($0.data, $0.response)
//    }
// )
//
//weatherPublisher.send(WeatherStation(stationID: "KSFO")) // San Francisco, CA
//weatherPublisher.send(WeatherStation(stationID: "EGLC")) // London, UK
//weatherPublisher.send(WeatherStation(stationID: "ZBBB")) // Beijing, CN
//let publisher = (2...5).publisher
//   .scan(1, { return $0 * $1 })
//   .sink(receiveValue: { print ("\($0)", terminator: " ") })
//출력값 2,6,24,120

struct ParseError: Error {}

func romanNumeral(from: Int) throws -> String? {
    let romanNumeralDict: [Int : String] =
        [1: "I", 2: "II", 3: "III", 4: "IV", 5: "V"]
    guard from != 0 else { throw ParseError() }
    return romanNumeralDict[from]

let numbers = [6, 5, 4, 3, 2, 1, 0]
cancellable = numbers.publisher
    .tryCompactMap { try romanNumeral(from: $0) }
    .sink(
          receiveCompletion: { print ("\($0)") },
          receiveValue: { print ("\($0)", terminator: " ") }
    )
          
// Prints: "(Unknown) V IV III II I failure(ParseError())"

