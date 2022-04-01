//
//  EventsSectionView.swift
//  Cafe
//
//  Created by 이승후 on 2022/03/27.
//

import SwiftUI

struct EventsSectionView: View {
    @Binding var events: [Event]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 16.0) {
                ForEach(events) { event in
                    EventSectionItemView(event: event)
                }
            }
            .padding()
        }
    }
}

struct EventSectionItemView: View {
    let event: Event
    
    var body: some View {
        VStack {
            HStack {
            Text("Events")
                .font(.headline)
                .frame(maxWidth: .infinity,
                       alignment: .leading)
            Button(action: {}){
                Text("See all")
            }
            .frame(maxWidth: .infinity,
                   alignment: .trailing)
            }
            event.image
                .resizable()
                .scaledToFill()
                .frame(height: 190.0)
                .clipped()
            Text(event.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.headline)
            Text(event.description)
                .lineLimit(1)
                .font(.callout)
                .frame(maxWidth: .infinity, alignment: .topLeading)
                
        }.frame(width: UIScreen.main.bounds.width - 32.0)
    }
}

