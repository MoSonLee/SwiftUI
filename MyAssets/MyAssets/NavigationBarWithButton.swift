//
//  NavigationBarWithButton.swift
//  MyAssets
//
//  Created by 이승후 on 2022/03/24.
//

import SwiftUI

struct NavigationBarWithButton: ViewModifier {
    var title: String = ""
    
    func body(content: Content) -> some View {
        return content
            .navigationBarItems(
                leading: Text(title)
                    .font(.system(size: 24, weight: .bold))
                    .padding(),
                trailing: Button(
                    action: {
                        print("자산추가 버튼 tapped")
                    },
                    label: {
                        Image(systemName: "plus")
                        Text("자산 추가")
                            .font(.system(size: 15))
                    }
                )
                .accentColor(.black)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black)
                )
            )
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                let appearance = UINavigationBarAppearance()
                appearance.configureWithOpaqueBackground()
                appearance.backgroundColor =
                UIColor(white: 1, alpha: 0.5)
                UINavigationBar.appearance().standardAppearance = appearance
                UINavigationBar.appearance().compactAppearance = appearance
                UINavigationBar.appearance().scrollEdgeAppearance = appearance
            }
    }
}

extension View {
    func navigationBarWithButtonStyle(_ title: String) -> some
    View {
        return self.modifier(NavigationBarWithButton(title: title))
    }
}

struct NavigationBarWithButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            Color.gray.edgesIgnoringSafeArea(.all)
                .navigationBarWithButtonStyle("내 자산")
        }
    }
}
