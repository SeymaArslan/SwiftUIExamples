//
//  AnimationExample.swift
//  SwiftUIExamples
//
//  Created by Seyma Arslan on 16.01.2025.
//  animasyonu button gibi bir UI da yazmak daha mantıklı

import SwiftUI

struct AnimationExample: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            
            Button("Button") {
                //                withAnimation(Animation.default.delay(2.0)) { //1
//                                withAnimation(
                //                    Animation //2
                //                        .default
                //                        .repeatCount(5, autoreverses: false) // 5 is repeat direction but every direction is 1 and autoreverses is original or not come back

//                                ) {
                    isAnimated.toggle()
                }
//            }
            
            RoundedRectangle(cornerRadius: isAnimated ? 100 : 25)
                .fill(isAnimated ? Color.green : Color.gray)
                .frame(width: isAnimated ? 200 : 300, height: isAnimated ? 200 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(Animation
                    .default
                    .repeatForever(autoreverses: true)
                )
            
//            Button("Button") {  // 1
//                withAnimation(.default) {
//                    isAnimated.toggle()
//                }
//            }
//            
//            RoundedRectangle(cornerRadius: isAnimated ? 100 : 25)
//                .fill(isAnimated ? Color.green : Color.gray)
//                .frame(width: isAnimated ? 200 : 300, height: isAnimated ? 200 : 300)
//                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
//                .offset(y: isAnimated ? 300 : 0)
            
        }
    }
}

#Preview {
    AnimationExample()
}
