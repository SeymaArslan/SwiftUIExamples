//
//  TernaryExample.swift
//  SwiftUIExamples
//
//  Created by Seyma Arslan on 16.01.2025.
//

import SwiftUI

struct TernaryExample: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            
            Text(isStartingState ? "Starting" : "Ending")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25.0 : 0)
                //.fill(isStartingState ? Color.red : Color.blue)
                .fill(isStartingState == true ? Color.red : Color.blue)
                .frame(width: isStartingState ? 100 : 200, height: 100)
            
            
        }
        
        
    }
}

#Preview {
    TernaryExample()
}
