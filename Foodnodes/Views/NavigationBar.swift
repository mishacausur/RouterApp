//
//  NavigationBar.swift
//  RealtyEstate
//
//  Created by Misha Causur on 07.01.2022.
//

import SwiftUI

struct NavigationBar: View {
    @Namespace var namespace
    @Binding var isScrolled: Bool
    var title: String
    var completion: () -> ()
    var body: some View {
        ZStack {
            Color.clear
                .background(.ultraThinMaterial)
                .blur(radius: 4)
                .opacity(isScrolled ? 1 : 0)
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
//                    .padding(.top, 24)
                    HStack {
                        Text(title)
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
                        Text(title)
                            .frame(width: 200, alignment: .leading)
                            .matchedGeometryEffect(id: "title", in: namespace)
                            .fontAnimator(size: isScrolled ? 22 : 32, weight: .bold, design: .default)
                            .foregroundColor(Color("textPrimary"))
                            .padding()
                            .frame(alignment: .trailing)
                    }
//                    .padding(.top, 24)
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
//            .background(.ultraThinMaterial)
        }
        .frame(height: isScrolled ? 140 : 180)

    }
}

//struct NavigationBar_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationBar(namespace: Namespace.ID, isScrolled: false, title: "Title", completion: {
//            
//        })
//    }
//}
