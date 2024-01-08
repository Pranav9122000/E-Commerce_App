//
//  CategoryItemView.swift
//  E-Commerce
//
//  Created by Kulkarni, Pranav on 08/01/24.
//

import SwiftUI

struct CategoryItemView: View {
    
    let category: CategoryModel
    
    var body: some View {
        Button(action: {
            
        }, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundStyle(.gray)
                
                Text(category.name)
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
                
                Spacer()
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 2)
            )
        })
    }
}

#Preview {
    CategoryItemView(category: category[0])
}
