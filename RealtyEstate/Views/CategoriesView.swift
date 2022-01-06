//
//  CategoriesView.swift
//  RealtyEstate
//
//  Created by Misha Causur on 06.01.2022.
//

import SwiftUI

struct CategoriesView: View {
    @Environment(\.dismiss) var dismiss
    @State var isScrolled = false
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    scrollDetection
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 130), spacing: 18)], spacing: 12) {
                        ForEach(CategoriesData.categories) { item in
                            NavigationLink(destination: ItemsView(item: item.name)
                                            .navigationBarHidden(true)) {
                                CardView(item: item)
                                    .padding()
                            }
                            
                        }
                        
                    }
                    .padding(.horizontal, 8)
                    .padding(.vertical, 160)
                }
                .background(Color("backLight"))
                .navigationBarHidden(true)
            }
            .overlay(alignment: .top ,content: {
                NavigationBar(isScrolled: $isScrolled, title: "Categories") {
                    dismiss()
                }
                .offset(y: isScrolled ? -20 : 0)
            } )
            
        }
        .navigationBarBackButtonHidden(true)
    }
    
    var scrollDetection: some View {
           GeometryReader { proxy in
//               Text("TEST \(proxy.frame(in: .named("scroll")).minY)")
               Color.clear.preference(key: ScrollHeight.self, value: proxy.frame(in: .named("scroll")).minY)
           }
           .onPreferenceChange(ScrollHeight.self) { value in
               withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                   if value < 50 {
                       isScrolled = true
                   } else {
                       isScrolled = false
                   }
               }
           }
           .frame(height: 0)
       }
}

struct Categories_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
