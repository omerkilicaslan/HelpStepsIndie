//
//  WalletViewRow.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 26.09.2023.
//

import SwiftUI

struct WalletViewRow: View {
    var title: String
    var value: String
    var isChevron: Bool = false
    var body: some View {
        HStack(alignment: .center, spacing: 4){
                VStack(alignment: .center, spacing: 4){
                    Text(title)
                        .foregroundColor(.black)
                        .font(.system(size: 16))
                        .bold()
                    
                    Text(value)
                        .foregroundColor(.green)
                        .font(.system(size: 20))
                        .bold()
                }
        }
        .frame(width: UIScreen.main.bounds.width * 0.9, height: 60)
        .background(.white)
        .cornerRadius(12)
        .shadow(color: .green, radius: 1)
    }
}

struct WalletViewRow_Previews: PreviewProvider {
    static var previews: some View {
        WalletViewRow(title: "Mevcut HS", value: "9,327")
    }
}
