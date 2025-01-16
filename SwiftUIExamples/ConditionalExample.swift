//
//  ConditionalExample.swift
//  SwiftUIExamples
//
//  Created by Seyma Arslan on 13.01.2025.
// toggle bool states için UI da bazı değişiklikler yapıyor ve durumu tersine çeviriyor

import SwiftUI

struct ConditionalExample: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("IS LOADING: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
            
        }
    }
}

#Preview {
    ConditionalExample()
}


               
               //            Button("Circle Button: \(showCircle.description)") { // 2
               //                showCircle.toggle()
               //            }
               //            Button("Rectangle Button: \(showRectangle.description)") {
               //                showRectangle.toggle()
               //            }
               //        })
               
               //        if showCircle {  // 1
               //            Circle()
               //                .frame(width: 100, height: 100)
               //        } else if showRectangle {
               //            Rectangle()
               //                .frame(width: 100, height: 100)
               //        } else {
               //            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
               //                .frame(width: 200, height: 100)
               //        }
               
               //        if showCircle {  // 2
               //            Circle()
               //                .frame(width: 100, height: 100)
               //        }
               //
               //        if showRectangle {
               //            Rectangle()
               //                .frame(width: 100, height: 100)
               //        }
               //
               //        if showCircle && showRectangle {
               //            RoundedRectangle(cornerRadius: 25.0)
               //                .frame(width: 100, height: 100)
               //        }
