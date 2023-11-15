//
//  ContentView.swift
//  State and Binding
//
//  Created by Joseph Albright
//

import SwiftUI


struct ContentView: View {
    @State var counter1 = 0
    @State var counter2 = 0
    @State var counter3 = 0
    
    var body: some View {
        VStack {
            
            
            
            HStack{
                CounterButton(counter: $counter1, color: .blue)
                CounterButton(counter: $counter2, color: .green)
                CounterButton(counter: $counter3, color: .red)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct CounterButton: View {
    @Binding var counter: Int
    var color: Color
    var body: some View {
        Button {
            counter = counter + 1
        } label: {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundStyle(color)
                .overlay {
                    Text("\(counter)")
                        .font(.system(size: 100, weight: .bold, design: .rounded))
                        .foregroundStyle(.white)
                }
        }
    }
}
