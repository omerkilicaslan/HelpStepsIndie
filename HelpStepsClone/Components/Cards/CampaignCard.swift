//
//  CampaignCard.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 24.09.2023.
//

import SwiftUI

struct CampaignCard: View {
    var body: some View {
        VStack{
            HStack{
                Text("Kampanyalar")//Header
                    .font(.system(size: 18))
                    .kerning(0.75)
                Spacer()
                
                Text("Tümünü Gör")
                    .foregroundColor(.green)
                    .font(.system(size: 14))
                    .bold()
            }
            .padding(.horizontal)
        }
    }
}

struct CampaignCard_Previews: PreviewProvider {
    static var previews: some View {
        CampaignCard()
    }
}
