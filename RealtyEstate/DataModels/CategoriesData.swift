//
//  CategoriesData.swift
//  RealtyEstate
//
//  Created by Misha Causur on 06.01.2022.
//

import Foundation

struct CategoriesData: Identifiable {
    let id = UUID()
    var name: String
    var count: Int
    var image: String
    
    static let categories: [CategoriesData] = [.init(name: "Vegetables", count: 43, image: "veg"),
                                               .init(name: "Fruits", count: 32, image: "fruits"),
                                               .init(name: "Bread", count: 22, image: "bread"),
                                               .init(name: "Sweets", count: 56, image: "sweets"),
                                               .init(name: "Pasta", count: 32, image: "pasta"),
                                               .init(name: "Drinks", count: 93, image: "drinks")]
}
