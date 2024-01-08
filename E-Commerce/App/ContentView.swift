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
            
            ScrollView {
                VStack(spacing: 0) {
                    FeatureTabView()
                        .frame(height: UIScreen.main.bounds.width / 1.475)
                        .padding(.vertical, 20)
                    
                    FooterView()
                        .padding()
                }
            }
            .scrollIndicators(.hidden)
            
            
        }
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    }
}

#Preview {
    ContentView()
}
