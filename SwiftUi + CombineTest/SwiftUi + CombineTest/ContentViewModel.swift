//
//  ContentViewModel.swift
//  SwitftUI+CombineTest
//
//  Created by meng on 2022/03/27.
//

import Combine
import SwiftUI

class ContentViewModel: ObservableObject { // BindableObject 프로토콜을 implement 해줍니다.
    let didChange = PassthroughSubject<Void, Never>() // BindableOjbect 프로토콜안에 있는 필수 프로퍼티 입니다. 뷰에 적용되어야할 객체가 업데이트 될때 호출 해주면 됩니다.
    private var cancellables: [AnyCancellable] = [] // 기존 RxSwift의 DisposeBag과 같은 역할을 하는 녀석입니다. 해당 객체가 deInit될때 메모리 관리에 사용됩니다.

    // View의 Input Action 관련 코드입니다.
    enum Input {
        case didTap(index: Int)
    }

    func apply(_ input: Input) {
        switch input {
        case .didTap(let index):
            didTapIndexSubject.send(index)
        }
    }

    //ViewModel 내부에서 index관련 이벤트를 처리하기 위한 Subject입니다.
    private let didTapIndexSubject = PassthroughSubject<Int, Never>()

    // View에 바인딩 할 Output관련 코드입니다.
    struct Output {
        var isErrorShown = false
        var labelText: String?
    }

    var output = Output() {
        didSet {
            didChange.send(()) //Output 구조체를 초기화 해준 후 값이 변경 될때 마다 didChange Subject에 업데이트를 알립니다.
        }
    }

    init() {
        bindOutputs()
    }

    // 바인딩 관련 작업을 해주는 함수 입니다.
     func bindOutputs() {

        let isError = didTapIndexSubject
            .map { $0 == 4 }// map을 사용하여 기존 Int형을 Bool형으로 변환해줍니다..
            .share() // share을 사용해서 해당 Publisher를 공유해줍니다.

        let showError = isError.assign(to: \.output.isErrorShown, on: self) //isError Pulisher를 output.isErrorShown에 assign 해줍니다.

        let showSucessedMessage = isError.filter { !$0 } // isError의 이벤트 값이 true일 경우 무시하기 위해서 filter를 걸어줍니다.
            .zip(didTapIndexSubject.eraseToAnyPublisher()) // didTapIndexSubject를 Publisher로 변환 한뒤 zip을 사용하여 isError와 합쳐줍니다.
            .map { "Sucessed \($1)" } // map을 사용하여 기존 값을 String형의 값으로 변환해줍니다.
            .assign(to: \.output.labelText, on: self) // 변환 된 값을 output.labelText에 assign 해줍니다.

        // 해당 AnyCancellable 형의 프로퍼티들을 cancellables에 추가해줍니다.
        cancellables += [
            showSucessedMessage,
            showError
        ]
    }
}
