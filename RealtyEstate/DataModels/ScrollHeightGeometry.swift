//
//  ScrollHeightGeometry.swift
//  RealtyEstate
//
//  Created by Misha Causur on 07.01.2022.
//

import Foundation
import SwiftUI

struct ScrollHeight: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
