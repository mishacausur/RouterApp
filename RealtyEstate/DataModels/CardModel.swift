//
//  CardModel.swift
//  RealtyEstate
//
//  Created by Misha Causur on 06.01.2022.
//

import Foundation

actor CardModel: Identifiable {
    let id = UUID()
    var title: String
    var text: String
    
    init(title: String, text: String) {
        self.title = title
        self.text = text
    }
}

extension CardModel: Equatable {
    static func == (lhs: CardModel, rhs: CardModel) -> Bool {
        lhs.id == rhs.id
    }
    
    
}

extension CardModel: Hashable {
    nonisolated func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
