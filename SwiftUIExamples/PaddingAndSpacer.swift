//
//  PaddingAndSpacer.swift
//  SwiftUIExamples
//
//  Created by Seyma Arslan on 31.12.2024.
//

import SwiftUI

struct PaddingAndSpacer: View {
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Hello World")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 15)
            
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
        })
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3), radius: 10, x: 0.0, y:10
                )
        )
        .padding(.horizontal, 10)
    }
}

#Preview {
    PaddingAndSpacer()
}
