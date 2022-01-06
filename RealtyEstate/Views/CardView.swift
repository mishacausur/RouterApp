//
//  CardView.swift
//  RealtyEstate
//
//  Created by Misha Causur on 06.01.2022.
//

import SwiftUI

struct CardView: View {
    var item: CategoriesData = CategoriesData.categories[0]
    var body: some View {
        VStack(alignment: .leading) {
            Image(item.image)
            Text(item.name)
                .font(.body.bold())
                .foregroundColor(Color("textPrimary"))
                .frame(alignment: .leading)
                .padding(.leading, 12)
                .padding(.top, 4)
            Text("(\(item.count))")
                .frame(alignment: .leading)
                .foregroundColor(Color("textSecondary"))
                .font(.footnote)
                .padding(.leading, 12)
                .padding(.top, 4)
            Spacer(minLength: 20)
        }
        .background(
            RoundedRectangle(cornerRadius: 15, style: .continuous).fill(Color.white)
                .shadow(radius: 8, x: 0, y: 4)
        )
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
