//
//  AnimationTimingExample.swift
//  SwiftUIExamples
//
//  Created by Seyma Arslan on 16.01.2025.
//

import SwiftUI

struct AnimationTimingExample: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.7,
                    blendDuration: 1.0))
                /*.animation(.spring())*/  // en yaygın animasyon türü
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.linear(duration: timing))  // doğrusal zamanlama
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing))  // önce yavaş sonra hızlı
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing))  // yavaş - hızlı - yavaş
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing))  // önce hızlı sonra yavaş
        }
    }
}

#Preview {
    AnimationTimingExample()
}
