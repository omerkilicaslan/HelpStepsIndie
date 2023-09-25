//
//  FavoriteCard.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 24.09.2023.
//

import SwiftUI

struct FavoriteCard: View {
    var image: String?
    var title: String?
    var secondaryTitle: String?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            HStack{
               Image(systemName: "heart.circle.fill")
                    .font(.system(size: 20))
                    .foregroundColor(.red)
                
                Text("Favoriler")
                    .bold()
                    .font(.system(size: 18))
                    .kerning(0.5)
            }
            
            HStack(alignment: .center){
                if image != nil {
                    Image(systemName: image ?? "")
                        .foregroundColor(.green)
                        .font(.system(size: 30))
                        .padding(.vertical, 12)
                }
                
                VStack(spacing: 6){
                    Text("HS Market")
                        .font(.system(size: 14))
                        .foregroundColor(.black)
                    
                    Text("HS Market")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                    
                }
                .padding(.trailing, 16)
                
                Text("...")
                    .bold()
                    .font(.system(size: 20))
                    .offset(y: -5)
            }
            .frame(width: 180, height: 55)
            .background(.white)
            .cornerRadius(12)
            .shadow(color: .green, radius: 1)
        }
    }
}

struct FavoriteCard_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteCard(image: "star.fill")
    }
}
