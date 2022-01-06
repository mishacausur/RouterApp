//
//  FontAnimator.swift
//  RealtyEstate
//
//  Created by Misha Causur on 06.01.2022.
//

import Foundation
import SwiftUI

struct FontAnimator: AnimatableModifier {
    var size: Double
    var weight: Font.Weight = .regular
    var design: Font.Design = .default
    
    var animatableData: Double {
        get { size }
        set { size = newValue }
    }
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: size, weight: weight, design: design))
    }
}

extension View {
    func fontAnimator(size: Double, weight: Font.Weight = .regular, design: Font.Design = .default) -> some View {
        self.modifier(FontAnimator(size: size, weight: weight, design: design))
    }
}
