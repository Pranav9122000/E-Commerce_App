//
//  SectionView.swift
//  E-Commerce
//
//  Created by Kulkarni, Pranav on 08/01/24.
//

import SwiftUI

struct SectionView: View {
    
    @State var rotateClockwise: Bool
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote).bold()
                .foregroundStyle(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? -90 : 90))
            
            Spacer()
            
        }
        .background(Color.gray)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .frame(width: 85)
    }
}

#Preview {
    SectionView(rotateClockwise: true)
}
