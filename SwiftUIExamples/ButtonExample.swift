//
//  ButtonExample.swift
//  SwiftUIExamples
//
//  Created by Seyma Arslan on 8.01.2025.
//   cornerRadiues button da deprecate olmuş documents bir bak

import SwiftUI

struct ButtonExample: View {
    @State var title: String = "My Title"
    
    var body: some View {
        VStack(spacing: 20, content: {
            Text(title)
            
            Button("Press me") {
                self.title = "Button was pressed"
            }
            .tint(.red)
            
            Button(action: {   // buton da bu yapı daha fazla özelleştirme yapmamızı sağlar, daha dinamiktir.
                self.title = "Button #2 was pressed"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .clipShape(.capsule)
                            .shadow(radius: 10)
                    )
            })
            
            
            Button(action: {
                self.title = "Button #3"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 50, height: 50)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "plus")
                            .font(.largeTitle)
                            .foregroundStyle(Color.gray)
                    )
            })
            
            
            Button(action: {
                self.title = "Button #4"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 3.0)
                    )
            })
            
        })
    }
}

#Preview {
    ButtonExample()
}
