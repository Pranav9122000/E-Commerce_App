//
//  RatingsView.swift
//  E-Commerce
//
//  Created by Kulkarni, Pranav on 18/01/24.
//

import SwiftUI

struct RatingsView: View {
    
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.gray.clipShape(RoundedRectangle(cornerRadius: 5)))
                                .foregroundStyle(.white)
                        })
                    }
                }
            }
            
            
            Spacer()
            
            
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
                
                HStack(alignment: .center, spacing: 5) {
                    ForEach(sizes, id: \.self) { item in
                        Button(action: {
                            
                        }, label: {
                            Text(item)
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .foregroundStyle(.gray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.clipShape(RoundedRectangle(cornerRadius: 5)))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(.gray, lineWidth: 2)
                                )
                        })
                    }
                }
            }
        }
    }
}

#Preview {
    RatingsView()
}
