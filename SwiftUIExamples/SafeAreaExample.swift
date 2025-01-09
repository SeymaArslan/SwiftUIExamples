//
//  SafeAreaExample.swift
//  SwiftUIExamples
//
//  Created by Seyma Arslan on 5.01.2025.
// eğer içerik kullanıcıya aitse görmesi, dokunması, basması gerekiyor, işte o zaman bu her zaman güvenli alan içinde kalmalı. Arka plan katmanı gibi bir şey varsa onu genişletebilir ve güvenli alanı yok sayabiliriz. (Dokümanları incele çünkü yeni iPhone lar da durum farklı bu eski bir tanım)
// not: 14.3 ten itibaren edgesIgnoringSafeArea kaldırıldı yerine ignoresSafeArea(edges: .all). Apple bunun yerine güvenli alanı yoksayan kenarlar kullanmamızı istiyor
import SwiftUI

struct SafeAreaExample: View {
  
    var body: some View {
//        ZStack {
//            
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//            
            ScrollView {
                VStack {
                    Text("Title goes here")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    ForEach(0..<10) { index in
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding(20)
                    }
                }
            }
            .background(
                Color.green
                    .ignoresSafeArea(edges: .top)
            )

        }
//        
//    }
    
    
//    var body: some View {
//        ZStack {
//            // background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//            
//            // foreground
//            VStack {
//                Text("Hello, World!")
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.red)
//        }
//    }
    
    /*
     var body: some View {
         Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
             .frame(maxWidth: .infinity, maxHeight: .infinity) // burada infinity aslında safeArea için maks alan
             .background(Color.red)
             .edgesIgnoringSafeArea(.all) // all her alanı, top üstteki güvenli alanı vs yok sayar
     */
    
    
//    var body: some View {  // anı kurtarır ama güzel bir çözüm değil
//        VStack {
//            Text("Hello, World!")
//                .padding(.top, 50)
//            Spacer()
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Color.red)
//        .edgesIgnoringSafeArea(.all)
//    }


    
}

#Preview {
    SafeAreaExample()
}
