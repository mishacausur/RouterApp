//
//  ContentView.swift
//  RealtyEstate
//
//  Created by Misha Causur on 05.01.2022.
//

import SwiftUI

struct ContentView: View {
    var items = ["1", "2", "3"]
    var body: some View {
        NavigationView {
            List(items, id: \.self) { i in
                Router.eventOccured(with: .toCardView(i)) {
                    Text(i)
                }
                .navigationTitle("YYY")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
