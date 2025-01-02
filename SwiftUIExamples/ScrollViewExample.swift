//
//  ScrollViewExample.swift
//  SwiftUIExamples
//
//  Created by Seyma Arslan on 2.01.2025.
// 9:07

import SwiftUI

struct ScrollViewExample: View {
    var body: some View {
        ScrollView {  // (.vertical, showsIndicators: false)
            VStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<5) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }

                        }
                    }
                    

                }
            }
        }
        
//        ScrollView(.horizontal, showsIndicators: false, content: {  // example 3
//            HStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 30, height: 30)
//                }
//            }
//        })
        
//        ScrollView(.vertical, showsIndicators: false, content: {  // kaydırak görüntüsü için showsIndicators example 2
//            VStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(height: 300)
//                }
//            }
//        })
        
//        ScrollView {    // example 1
//            VStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(height: 300)
//
//                }
//                
//                Rectangle()
//                    .frame(height: 300)
//                
//                Rectangle()
//                    .frame(height: 300)
//                
//                Rectangle()
//                    .frame(height: 300)
//            }
//        }

    }
}

#Preview {
    ScrollViewExample()
}
