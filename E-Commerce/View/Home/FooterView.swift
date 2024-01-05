//
//  FooterView.swift
//  E-Commerce
//
//  Created by Kulkarni, Pranav on 05/01/24.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable price")
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundStyle(.gray)
                .layoutPriority(0)
            
            Text("Copyright © Pranav Kulkarni\nAll rights reserved")
                .font(.footnote).bold()
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }
        .padding()
    }
}

#Preview {
    FooterView()
}
