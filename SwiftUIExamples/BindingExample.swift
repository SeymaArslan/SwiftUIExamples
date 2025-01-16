//
//  BindingExample.swift
//  SwiftUIExamples
//
//  Created by Seyma Arslan on 10.01.2025.
//

import SwiftUI

struct BindingExample: View {
    var body: some View {
        
        @State var backgroundColor: Color = Color.green
        @State var title: String = "Title"
        
        ZStack {
            backgroundColor
                .ignoresSafeArea(.all)
            
            VStack {
                Text(title)
                    .foregroundStyle(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
            

        }
    }
}

struct ButtonView: View {
    // backgroundColor değişkenine erişmemiz lazım çünkü tanımlayamıyor
    @Binding var backgroundColor: Color
    @Binding var title: String
    
    var body: some View {
//        Button(action: {
//            backgroundColor = Color.orange
//            title = "New title"
//        }, label: {
//            Text("Button")
//                .foregroundStyle(.white)
//                .padding()
//                .padding(.horizontal)
//                .background(buttonColor)
//                .cornerRadius(10)
//        })
//        
        Button(action: {
            backgroundColor = backgroundColor == .green ? .orange : .green
            title = title == "new new title" ? "button pressed" : "new new title"
        }) {
            Text("button2")
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(.gray)
                .cornerRadius(10)
        }
    }
}

#Preview {
    BindingExample()
}


