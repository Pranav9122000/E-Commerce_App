//
//  ContentView.swift
//  E-Commerce
//
//  Created by Kulkarni, Pranav on 05/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationBarView()
                .padding(.horizontal, 15)
                .padding(.bottom)
                .padding(.top, UIApplication.shared.connectedScenes.first?.inputView?.safeAreaInsets.top)
                .background(.white)
                .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5)
            Spacer()
            FooterView()
                .padding()
        }
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    }
}

#Preview {
    ContentView()
}
