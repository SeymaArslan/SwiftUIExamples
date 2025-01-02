//
//  Initializer.swift
//  SwiftUIExamples
//
//  Created by Seyma Arslan on 2.01.2025.
//  12:27

import SwiftUI

struct Initializer: View {
    
    let backgroundColor : Color
    var count: Int
    var title: String
    
//    init(backgroundColor: Color, count: Int, title: String) { // swiftUI bunu otomatik yapıyor 1. örnek
//        self.backgroundColor = backgroundColor
//        self.count = count
//        self.title = title
       
    // burası özelleştirdiğimiz yer 2. örnek
//    init(count: Int, title: String) { // swiftUI bunu otomatik yapıyor
//            self.count = count
//            self.title = title
//            
//        if title == "Apples" {
//            self.backgroundColor = .red
//        } else {
//            self.backgroundColor = .orange
//        }
//    }
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12 ){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
//    Initializer(backgroundColor: .orange, count: 10, title: "peaches")  // 1.örnek
//    Initializer(count: 10, title: "Apples")   // 2. örnek
    HStack {
        Initializer(count: 20, fruit: .apple)
        Initializer(count: 100, fruit: .orange)
    }
}


