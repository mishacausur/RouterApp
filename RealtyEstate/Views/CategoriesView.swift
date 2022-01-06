//
//  CategoriesView.swift
//  RealtyEstate
//
//  Created by Misha Causur on 06.01.2022.
//

import SwiftUI

struct CategoriesView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Image(systemName: "arrow.left")
                    .onTapGesture {
                        dismiss()                }
                    .padding()
                Text("Categories")
                    .font(.title).bold()
                    .foregroundColor(Color("textPrimary"))
                    .padding()
                    .frame(alignment: .trailing)
                HStack {
                    Image(systemName: "magnifyingglass")
                        .padding(.horizontal, 12)
                    Text("Search")
                        .foregroundColor(.secondary)
                        .frame(alignment: .leading)
                    Spacer()
                }
                .padding(.vertical, 8)
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 50, style: .continuous)
                        .fill(.white)
                )
               
                  
                .padding(.horizontal, 8)

                ScrollView {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 130), spacing: 18)], spacing: 12) {
                        ForEach(CategoriesData.categories) { item in
                            CardView(item: item)
                                .padding()
                        }
                    }
                }
                .padding(.horizontal, 8)
                .padding(.vertical, 12)
            }

            .background(Color("backLight"))
            .navigationBarHidden(true)
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Categories_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
