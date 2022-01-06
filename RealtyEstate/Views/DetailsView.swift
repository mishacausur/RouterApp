//
//  DetailsView.swift
//  RealtyEstate
//
//  Created by Misha Causur on 07.01.2022.
//

import SwiftUI

struct DetailsView: View {
    var item = Item.items[0]
    var body: some View {
        Text(item.name)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
