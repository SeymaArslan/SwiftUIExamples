//
//  Stacks.swift
//  SwiftUIExamples
//
//  Created by Seyma Arslan on 31.12.2024.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
        VStack(spacing: 50) {
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.largeTitle)
                    .foregroundStyle(Color.white)
            }
            
            Text("1")
                .font(.largeTitle)
                .foregroundStyle(Color.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
        

        
        
//        VStack(alignment: .center, spacing: 20, content: {
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//            Text("Items in your cart")
//                .font(.caption)
//                .foregroundStyle(Color.gray)
//        })
//
//        ZStack(content: {
//            Rectangle()
//                .fill(Color.gray)
//                .frame(width: 350, height: 500, alignment: .center)
//
//            VStack(alignment: .leading, spacing: 30, content: {
//                Rectangle()
//                    .fill(Color.blue)
//                    .opacity(0.8)
//                    .frame(width: 150, height: 150)
//
//                Rectangle()
//                    .fill(Color.green)
//                    .opacity(0.8)
//                    .frame(width: 100, height: 100)
//
//                HStack {
//                    Rectangle()
//                        .fill(Color.green)
//                        .frame(width: 25, height: 25)
//
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 50, height: 50)
//
//                    Rectangle()
//                        .fill(Color.green)
//                        .frame(width: 35, height: 35)
//                }
//                .background(Color.white)
//            })
//            .background(Color.black)
//        })
    }
}

#Preview {
    Stacks()
}
