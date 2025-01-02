//
//  Spacer.swift
//  SwiftUIExamples
//
//  Created by Seyma Arslan on 1.01.2025.
//

import SwiftUI

struct Spacer: View {
    var body: some View {
        HStack(spacing: 0) {

            Rectangle()
                .fill(Color.gray)
                .frame(width: 100, height: 100)
            

            
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
        }
        .background(Color.blue)
    }
}

#Preview {
    Spacer()
}
