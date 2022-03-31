////
////  Sample.swift
////  Cafe
////
////  Created by 이승후 on 2022/03/31.
////
//
//import SwiftUI
//
//class ButtonModel: ObservableObject {
//    @Published var isDisabled = true
//}
//
//struct MainView: View {
//    @ObservedObject var buttonModel = ButtonModel()
//
//}
//
//struct ParentView: View {
//    @ObservedObject var buttonModel = ButtonModel()
//
//    var body: some View {
//        SampleView(isDisabled: $buttonModel.isDisabled)
//    }
//}
//
//struct SampleView: View {
//    @State private var currentText = ""
//    @Binding  var isDisabled: Bool
//
//    var body: some View {
////        VStack {
////            TextField("텍스트를 입력해주세요.", text: $currentText)
////            Text(currentText)
////        }
//        VStack {
//            Toggle(isOn: $isDisabled, label:{
//                Text("버튼을 비활성화 시키겠습니까")
//            }
//            )
//            Button("버튼") {}
//                .disabled(isDisabled)
//        }
//    }
//}
//
//struct Sample_Previews: PreviewProvider {
//    static var previews: some View {
//        ParentView()
//    }
//}
