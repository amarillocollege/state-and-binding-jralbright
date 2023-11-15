//
//  ContentView.swift
//  State and Binding
//
//  Created by [YOUR NAME GOES HERE]
//

import SwiftUI


struct ContentView: View {
    var counter = 1
    
    var body: some View {
        VStack {
            Button {
                counter += 1
            } label: {
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundStyle(.red)
                    .overlay {
                        Text("\(counter)")
                            .font(.system(size: 100, weight: .bold, design: .rounded))
                            .foregroundStyle(.white)
                    }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
