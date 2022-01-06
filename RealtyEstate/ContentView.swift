//
//  ContentView.swift
//  RealtyEstate
//
//  Created by Misha Causur on 05.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Circle().fill(Color.white)
                    .frame(width: 104)
                    .overlay {
                        Image("boxIcon")
                    }
                    .padding(.top, 40)
                    .padding(.top, 45.0)
                Text("Non-Contact \nDeliveries")
                    .font(.title.bold())
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("textPrimary"))
                    .padding(.top, 24)
                Text("When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("textSecondary"))
                    .padding(.all, 20.0)
                    
                Button {
                    
                } label: {
                    RoundedRectangle(cornerRadius: 12, style: .continuous)
                        .fill(Color("primaryButton"))
                        .frame(height: 56)
                        .overlay {
                            Text("Order Now".uppercased())
                                .font(.footnote.bold())
                                .foregroundColor(.white)
                        }
                }
                .padding(.bottom, 13)
                .padding(.horizontal, 10)
                Button { } label: {
                    RoundedRectangle(cornerRadius: 12, style: .continuous)
                        .fill(Color("backLight"))
                        .frame(height: 56)
                        .overlay {
                            Text("Dismiss".uppercased())
                                .foregroundColor(Color("textSecondary"))
                                .font(.footnote.bold())
                        }
                }
                .padding(.bottom, 24)
                .padding(.horizontal, 10)
                
            }
            .frame(maxWidth: .infinity)
            .frame(height: 564)
            .background(
                RoundedRectangle(cornerRadius: 25, style: .continuous).fill(Color("backLight")))
        }
        .background(
            Image("background 1"))
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
