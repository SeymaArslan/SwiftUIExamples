//
//  StateExample.swift
//  SwiftUIExamples
//
//  Created by Seyma Arslan on 8.01.2025.
//

import SwiftUI

struct StateExample: View {
    
    @State var backgroundColor: Color = Color.green // burada state'in yaptığı şey View'a backgroundColor değişkenini izlemesini söylemesi
    @State var title: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea(.all)
            
            VStack(spacing: 20, content: {
                Text(title)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20, content: {
                    Button("Button 1") {
                        backgroundColor = .blue
                        title = "My Title Blue"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .gray
                        title = "My Title Gray"
                        count += 1
                    }
                })
            })
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    StateExample()
}
