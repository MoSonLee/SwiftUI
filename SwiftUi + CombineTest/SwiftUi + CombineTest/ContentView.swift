//
//  ContentView.swift
//  SwitftUI+CombineTest
//
//  Created by meng on 2022/03/27.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @StateObject var viewModel: ContentViewModel
    
    //ObjectBiding 프로퍼티 Delegate를 사용하여 viewModel 를 생성해줍니다.
 

     var body: some View {
         NavigationView {
             List(0..<5) { index in
                 HStack {
                     Image(systemName: "star")
                     Text("Hello World")
                 }
                 .onTapGesture { // List내의 Row가 선택될때 호출됩니다. 기존 UITableViewDelegate의 didSelect 와 같다고 생각하시면됩니다.
                     self.viewModel.apply(.didTap(index: index)) //viewModel에 Input Action을 보냅니다.
                 }
             }
             
             .alert(isPresented: $viewModel.output.isErrorShown) { // viewModel.output.isErrorShown 값이 변경될때 true일 경우
                 Alert(title: Text("Error"), message: Text("Error")) // Alert View를 NavigationView에서 present 해줍니다.
             }
             .navigationBarTitle(Text(viewModel.output.labelText ?? "Sample App")) // viewModel.output.labelText에 있는 String값으로 네비게이션 값을 설정해줍니다.
         }
     }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentViewModel())
    }
}
