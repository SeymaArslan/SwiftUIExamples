//
//  ExtractedFunctionsBCamp.swift
//  SwiftUIExamples
//
//  Created by Seyma Arslan on 8.01.2025.
//  buton özelleştirdik diyelim her şeye de entegre edemiyoruz altında mı oluşturmak gerek yoksa yeni bir yapı oluşturmak mı?

import SwiftUI

struct ExtractedFunctionsBCamp: View {
    @State var bColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            bColor.ignoresSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack(content: {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                buttonPressed()
            } label: {
                Text("PRESS")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10.0)
            }

        })
    }
    
    func buttonPressed() {
        bColor = .yellow
    }
}

#Preview {
    ExtractedFunctionsBCamp()
}
