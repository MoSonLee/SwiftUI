//
//  ContentView.swift
//  RandomPeople
//
//  Created by 이승후 on 2022/04/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
        HStack{
            Image(systemName: "house.fill")
            Text("AA")
            TextField(Text, text: "String")
            
        }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
