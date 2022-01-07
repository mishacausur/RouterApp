//
//  ItemView.swift
//  RealtyEstate
//
//  Created by Misha Causur on 07.01.2022.
//

import SwiftUI

struct ItemView: View {
    var item = Item.items[0]
    var body: some View {
        HStack(alignment: .bottom) {
            VStack {
                Image(item.image)
            }
            .padding(.leading, 8)
            VStack(alignment: .leading, spacing: 12) {
                Text(item.name)
                    .font(.callout.bold())
                    .foregroundColor(Color("textPrimary"))

                HStack(alignment: .bottom, spacing: 8) {
                    Text(String(format: "%.02f", Double(item.price)))
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(Color("textPrimary"))
                        .frame(alignment: .bottom)
                    Text("$ / \(item.metric)")
                        .padding(.bottom, 4)
                        .font(.system(size: 14, weight: .light))
                        .foregroundColor(Color("textSecondary"))
                }
                Spacer()
                HStack(alignment: .bottom, spacing: 12) {
                    RoundedRectangle(cornerRadius: 4, style: .continuous)
                        .stroke(
                            LinearGradient(colors: [Color("textSecondary")], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .overlay(content: {
                            Image(systemName: "heart")
                                .font(.body.weight(.medium))
                                .foregroundColor(Color("textSecondary"))
                        })
                        .frame(height: 40)
                    RoundedRectangle(cornerRadius: 4, style: .continuous)
                        .fill(Color("primaryButton"))
                        .frame(height: 40)
                        .overlay {
                            Image(systemName: "cart")
                                .foregroundColor(.white)
                        }
                }
                .background(Color.white)
            }
            .frame(maxWidth: .infinity)
            
            .padding(.trailing, 8)
            .padding(.leading, 0)
        }
        .padding(.vertical, 8)
        .frame(height: 105)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
            .scaledToFit()
    }
}
