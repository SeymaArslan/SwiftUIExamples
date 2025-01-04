//
//  ForEach.swift
//  SwiftUIExamples
//
//  Created by Seyma Arslan on 2.01.2025.
//SwiftUI da ForEach döngüler yerine dinamik olarak listeleme yapmak için kullanılıyor. Özellikle bir listeyi veya bir dizi veriyi arayüzde göstermek istediğinizde ForEach kullanılır.

import SwiftUI

struct ForEachExample: View {
    //    @State private var numbers = [1, 2, 3]
    
    
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
            
            // numbers dizisini ForEach ile listele
            //            ForEach(numbers, id: \.self) { number in
            //                Text("Number: \(number)")
            //                Circle()
            //                    .frame(width: 30, height: 30)
            //            }
            
            // Buton ile yeni bir sayı ekleyin
            //            Button("Add Number") {
            //                // numbers dizisine bir eleman ekleyin
            //                numbers.append(numbers.count + 1)
            //            }
        }
    }
}

#Preview {
    ForEachExample()
}
