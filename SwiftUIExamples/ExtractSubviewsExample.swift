//
//  ExtractSubviewsExample.swift
//  SwiftUIExamples
//
//  Created by Seyma Arslan on 9.01.2025.
//

import SwiftUI

struct ExtractSubviewsExample: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea(.all)
            
            contentLayer
        }
    }
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 1, color: .red)
            MyItem(title: "Oranges", count: 10, color: .orange)
            MyItem(title: "Strawberry", count: 34, color: .pink)
        }
    }
}

#Preview {
    ExtractSubviewsExample()
}

struct MyItem: View {
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
