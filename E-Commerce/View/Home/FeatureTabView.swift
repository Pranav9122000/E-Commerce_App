//
//  FeatureTabView.swift
//  E-Commerce
//
//  Created by Kulkarni, Pranav on 07/01/24.
//

import SwiftUI

struct FeatureTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeatureItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

#Preview {
    FeatureTabView()
}
