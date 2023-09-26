//
//  WalletView.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 26.09.2023.
//

import SwiftUI

struct WalletView: View {
    var body: some View {
        VStack(spacing: 12){
            WalletViewRow(title: "Mevcut HS", value: "9,327", isChevron: false)
            
            WalletViewRow(title: "Transfer HS", value: "0", isChevron: true)
            
            WalletViewRow(title: "Bonus HS", value: "9,327", isChevron: false)
            
            WalletViewRow(title: "Dönüştürülen HS", value: "0", isChevron: false)
            
            WalletViewRow(title: "Bağışlanan HS", value: "9,327", isChevron: false)
            
            CampaignQRCard(campaignQRText: "Kampanya Kodu")
                .foregroundColor(.green)
                .frame(width: UIScreen.main.bounds.width *  0.9)

        }
    }
}

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}
