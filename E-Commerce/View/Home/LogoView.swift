//
//  LogoView.swift
//  E-Commerce
//
//  Created by Kulkarni, Pranav on 05/01/24.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Text("TOUCH")
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("DOWN")
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    LogoView()
}
