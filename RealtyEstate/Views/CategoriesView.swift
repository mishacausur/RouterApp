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
                            CardView(item: item)
                                .padding()
                        }
                        
                    }
                    .padding(.horizontal, 8)
                    .padding(.vertical, 160)
                }
                .background(Color("backLight"))
                .navigationBarHidden(true)
                
                VStack {
                    NavigationBar(isScrolled: $isScrolled) {
                        dismiss()
                    }
                    .offset(y: isScrolled ? -20 : 0)
                    Spacer()
                    
                }
            }
            
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

struct NavigationBar: View {
    @Namespace var namespace
    @Binding var isScrolled: Bool
    var completion: () -> ()
    var body: some View {
        VStack(alignment: .leading) {
            if !isScrolled {
                HStack {
                    Image(systemName: "arrow.left")
                        .onTapGesture {
                            completion()
                        }
                        .matchedGeometryEffect(id: "arrow", in: namespace)
                        .padding(.leading, 12)
                }
                .padding(.top, 24)
                HStack {
                    Text("Categories")
                        .frame(width: 200, alignment: .leading)
                        .matchedGeometryEffect(id: "title", in: namespace)
                        .fontAnimator(size: isScrolled ? 22 : 32, weight: .bold, design: .default)
                        .foregroundColor(Color("textPrimary"))
                        .padding()
                        .frame(alignment: .trailing)
                }
               
            } else {
                HStack {
                    Image(systemName: "arrow.left")
                        .onTapGesture {
                            completion()
                        }
                        .matchedGeometryEffect(id: "arrow", in: namespace)
                        .padding(.leading, 12)
                    Text("Categories")
                        .frame(width: 200, alignment: .leading)
                        .matchedGeometryEffect(id: "title", in: namespace)
                        .fontAnimator(size: isScrolled ? 22 : 32, weight: .bold, design: .default)
                        .foregroundColor(Color("textPrimary"))
                        .padding()
                        .frame(alignment: .trailing)
                }
                .padding(.top, 24)
            }

            HStack {
                Image(systemName: "magnifyingglass")
                    .matchedGeometryEffect(id: "glass", in: namespace)
                    .padding(.horizontal, 12)
                Text("Search")
                    .foregroundColor(.secondary)
                    .frame(alignment: .leading)
                Spacer()
            }
            .padding(.vertical, 8)
            .background(
                RoundedRectangle(cornerRadius: 50, style: .continuous)
                    .fill(.white)
            )
            .padding(.horizontal, 8)
            .padding(.bottom, 12)
            
        }
        .background(.ultraThinMaterial)
        

    }
}

struct ScrollHeight: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
