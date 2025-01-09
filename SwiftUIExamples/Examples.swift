//
//  Examples.swift
//  SwiftUIExamples
//
//  Created by Seyma Arslan on 8.01.2025.
//

import SwiftUI

struct Examples: View {
    @State var title: String = "Title"
    @State var score: Int = 0
    @State var bColor: Color = .white
    
    var body: some View {
        ZStack {
            bColor
                .ignoresSafeArea()
            
            VStack(content: {
                Text(title)
                    .font(.largeTitle)
                
                HStack(content: {
                    Text("Your Score:")
                        .font(.headline)
                    Text("\(score)")
                        .font(.largeTitle)
                        .underline()
                })
                .padding(.bottom, 50)
                
                HStack(spacing: 20, content: {
                    Button("INCREASE") {
                        bColor = .blue
                        score += 1
                    }
                    
                    Button("Decrease".uppercased()) {
                        bColor = .red
                        score -= 1
                    }
                })
            })
            .foregroundColor(.black)
        }
    }
}

#Preview {
    Examples()
}
