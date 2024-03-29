//
//  DetailsView.swift
//  RealtyEstate
//
//  Created by Misha Causur on 07.01.2022.
//

import SwiftUI

struct DetailsView: View {
    @Environment(\.dismiss) var dismiss
    var item = Item.items[0]
    var body: some View {
        ZStack {
            VStack {
                Image("veg1")
                    .resizable()
                    .frame(height: 300)
                Spacer()

            }
                    Image(systemName: "arrow.left")
                        .onTapGesture {
                            dismiss()
                        }
                        .foregroundColor(Color.white)
                        .position(x: 12, y: 50)
                    .padding()
               
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color("backLight"))
                .padding(.top, 250)
                .overlay {
                    ScrollView {
                            VStack(alignment: .leading) {
                                Text(item.name)
                                    .font(.system(size: 24, weight: .bold, design: .default))
                                    .foregroundColor(Color("textPrimary"))
                                    .padding(.top, 2)
                                    .padding()
                                HStack(alignment: .bottom) {
                                    Text(String(format: "%.02f", Double(item.price)))
                                        .padding(.leading)
                                        .font(.system(size: 32, weight: .bold, design: .default))
                                        .foregroundColor(Color("textPrimary"))
                                    Text("$ / \(item.metric)")
                                        .padding(.bottom, 4)
                                        .font(.system(size: 20, weight: .light))
                                        .foregroundColor(Color("textSecondary"))
                                }
                                Text("~ 150 gr / piece")
                                    .padding(.horizontal)
                                    .foregroundColor(Color("primaryButton"))
                                    .font(.system(size: 16, weight: .light))
                                    .padding(.bottom, 6)
                                Text("Spain")
                                    .font(.system(size: 24, weight: .bold, design: .default))
                                    .foregroundColor(Color("textPrimary"))
                                    .padding(.horizontal)
                                    .padding(.bottom, 4)
                                Text(item.description)
                                    .font(.system(size: 16, weight: .light))
                                    .foregroundColor(Color("textSecondary"))
                                    .padding(.horizontal)
                                    .lineSpacing(4)
                                HStack {
                                    RoundedRectangle(cornerRadius: 4, style: .continuous)
                                        .stroke(
                                            LinearGradient(colors: [Color("textSecondary")], startPoint: .topLeading, endPoint: .bottomTrailing))
                                        .overlay(content: {
                                            Image(systemName: "heart")
                                                .font(.body.weight(.medium))
                                                .foregroundColor(Color("textSecondary"))
                                        })
                                        .frame(width: 60 ,height: 40)
                                    RoundedRectangle(cornerRadius: 4, style: .continuous)
                                        .fill(Color("primaryButton"))
                                        .frame(height: 40)
                                        .overlay {
                                            HStack {
                                                Image(systemName: "cart")
                                                    .foregroundColor(.white)
                                                Text("Add to cart".uppercased())
                                                    .font(.system(size: 14, weight: .bold, design: .default))
                                                    .foregroundColor(.white)
                                            }
                                        }
                                }
                                .padding()
                            }
                    }
                    .padding(.top, 250)
                }
            
        }
        .ignoresSafeArea()
    }
    
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}


