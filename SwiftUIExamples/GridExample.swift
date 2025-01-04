//
//  GridExample.swift
//  SwiftUIExamples
//
//  Created by Seyma Arslan on 4.01.2025.
//

import SwiftUI

struct GridExample: View {
   
    /* this is our most basic view
     let columns: [GridItem] = [
         GridItem(.fixed(50), spacing: nil, alignment: nil),
         GridItem(.fixed(50), spacing: nil, alignment: nil),
         GridItem(.fixed(50), spacing: nil, alignment: nil),
         GridItem(.fixed(50), spacing: nil, alignment: nil),
         GridItem(.fixed(50), spacing: nil, alignment: nil),
     ]

     var body: some View {
         LazyVGrid(columns: columns, content: {
             ForEach(0..<50) { index in
                 Rectangle()
                     .frame(height: 50)
             }
         })
     }

     */
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]

    var body: some View {
        LazyVGrid(columns: columns, content: {
            ForEach(0..<50) { index in
                Rectangle()
                    .frame(height: 50)
            }
        })
    }
}

#Preview {
    GridExample()
}
