//
//  GridExample.swift
//  SwiftUIExamples
//
//  Created by Seyma Arslan on 4.01.2025.
//  Not: Flexible yerine Adaptive kullanılabiliyor, tercihen hangisi geliştiriciye kalmış

import SwiftUI

struct GridExample: View {
   
    //this is our most basic view
//     let columns: [GridItem] = [
//         GridItem(.fixed(50), spacing: nil, alignment: nil),  // her biri bir column
//         GridItem(.fixed(50), spacing: nil, alignment: nil),
//         GridItem(.fixed(50), spacing: nil, alignment: nil),
//         GridItem(.fixed(50), spacing: nil, alignment: nil),
//         GridItem(.fixed(50), spacing: nil, alignment: nil),
//     ]
//
//     var body: some View {
//         ScrollView {
//             LazyVGrid(columns: columns, content: {
//                 ForEach(0..<50) { index in
//                     Rectangle()
//                         .frame(height: 50)
//                 }
//             })
//         }
//     }

     
//    let columns: [GridItem] = [
//        GridItem(.flexible(), spacing: nil, alignment: nil),  // farklı ekranlar için harika çözüm
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//    ]
//
//    var body: some View {
//        ScrollView {
//            LazyVGrid(columns: columns, content: {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .frame(height: 50)
//                }
//            })
//        }
//    }
    
    
//    let columns: [GridItem] = [
//        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil),  // tek satırda birden fazla Item yazmışız gibi görünüyor ve sebebi min 50 maks 300 aralığında mümkün olduğunca çok rect yerleştiriyor
//        
//        GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil), // ikinci item eklediğimizde aslında ekranı 2'ye bölmüş oluyoruz, sol tarafında kalan rect ler ilk item, sağ ise ikinci item ile ifade ediliyor, min değeri değiştirdiğimizde ise şu an ki ekrana ancak tek column ekleyebiliyor
//    ]
//
//    var body: some View {
//        ScrollView {
//            LazyVGrid(columns: columns, content: {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .frame(height: 50)
//                }
//            })
//        }
//    }
    
    // genel kullanım örnek
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),  // buradaki spacing ise column
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]

    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,  // row
                pinnedViews: [.sectionHeaders],   // sabitleme dizisi ? sayfayıo kaydırsan da kalıyor falan çok iyi
                content: {
                    Section(header: 
                        Text("Section 1")
                        .foregroundStyle(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue)
                        .padding()
                    ) {
                        ForEach(0..<10) { index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    }
                    
                    Section(header:
                        Text("Section 2")
                        .foregroundStyle(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.green)
                        .padding()
                    ) {
                        ForEach(0..<10) { index in
                            Rectangle()
                                .fill(.gray)
                                .frame(height: 150)
                        }
                    }
                
            })
            

        }
    }
}

#Preview {
    GridExample()
}

