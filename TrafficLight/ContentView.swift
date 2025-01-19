//
//  ContentView.swift
//  TrafficLight
//
//  Created by Anastasya Maximova on 19.01.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Circle()
                .fill(.red)
                .frame(width: 200)
                .overlay(Circle().stroke(Color.black, lineWidth: 6))
                .shadow(radius: 10)
            Circle()
                .fill(.yellow)
                .frame(width: 200)
                .overlay(Circle().stroke(Color.black, lineWidth: 6))
                .shadow(radius: 10)
            Circle()
                .fill(.green)
                .frame(width: 200)
                .overlay(Circle().stroke(Color.black, lineWidth: 6))
                .shadow(radius: 10)
            Button(action: {}){Text("Start")
                    .font(.largeTitle)
            }
            .frame(width: 200, height: 60)
           // .cornerRadius(200)
            .overlay(Capsule().stroke(Color.black, lineWidth: 6))
            .background(.tint)
            .foregroundStyle(.white)
            .padding(.top, 40)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
