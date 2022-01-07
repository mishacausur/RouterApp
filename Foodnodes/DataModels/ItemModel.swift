//
//  ItemModel.swift
//  RealtyEstate
//
//  Created by Misha Causur on 07.01.2022.
//

import Foundation

struct Item: Identifiable {
    let id = UUID()
    var name: String
    var price: Double
    var metric: String
    var image: String
    var description: String
    
    static var items: [Item] = [
        .init(name: "Boston Lettuce", price: 1.10, metric: "piece", image: "veg4", description: "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled."),
        .init(name: "Purple Cauliflower", price: 1.85, metric: "kg", image: "veg2", description: "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled."),
        .init(name: "Savoy Cabbage", price: 1.45, metric: "kg", image: "veg3", description: "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled."),
        .init(name: "Boston Lettuce", price: 1.10, metric: "piece", image: "veg4", description: "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled."),
        .init(name: "Purple Cauliflower", price: 1.85, metric: "kg", image: "veg2", description: "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled."),
        .init(name: "Savoy Cabbage", price: 1.45, metric: "kg", image: "veg3", description: "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.")
    ]
}
