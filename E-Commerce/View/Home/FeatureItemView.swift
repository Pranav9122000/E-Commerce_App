//
//  FeatureItemView.swift
//  E-Commerce
//
//  Created by Kulkarni, Pranav on 07/01/24.
//

import SwiftUI

struct FeatureItemView: View {
    
    let player: PlayerModel
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    FeatureItemView(player: players[0])
}
