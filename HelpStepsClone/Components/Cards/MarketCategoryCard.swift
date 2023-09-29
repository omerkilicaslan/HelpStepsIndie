//
//  MarketCategoryCard.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 29.09.2023.
//

import SwiftUI

struct MarketCategoryCard: View {
    var image: String = "basket.fill"
    
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .center){
                if image != nil {
                    Image(systemName: image ?? "")
                        .foregroundColor(.green)
                        .font(.system(size: 30))
                        .padding(.vertical, 12)
                        .padding(.horizontal, 8)
                }
                    
                
               Text("HS Ürünleri")
                    .foregroundColor(.black)
                    .font(.system(size: 14))
                
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width / 2.4, height: 55)
            .background(.white)
            .cornerRadius(12)
            .shadow(color: .green, radius: 1)
        }
    }
}

struct MarketCategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        MarketCategoryCard()
    }
}
