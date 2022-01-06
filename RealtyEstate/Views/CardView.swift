//
//  CardView.swift
//  RealtyEstate
//
//  Created by Misha Causur on 06.01.2022.
//

import SwiftUI

struct CardView: View {
    var title: String
    var body: some View {
        Text(title)
    }
}

struct CardView_Preview: PreviewProvider {
    static var previews: some View {
        CardView(title: "1")
    }
}
