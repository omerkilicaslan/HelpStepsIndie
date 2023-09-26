//
//  CampaignQRCard.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 26.09.2023.
//

import SwiftUI

struct CampaignQRCard: View {
    @State var campaignQRText: String = ""
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("Kampanya kodunu giriniz veya QR okutunuz")
                    .foregroundColor(.black)
                    .font(.system(size: 14))
                    .kerning(0.6)
                    .padding(.leading, 8)
                    .padding(.top, 16)
                    .padding(.bottom, 16)
                
                HStack{
                    CustomTextField(text: $campaignQRText, placeholder: "Kampanya Kodu", placeholderColor: .green)
                        .padding(.leading, 8)

                    Spacer()
                    
                    Image(systemName: "qrcode")
                        .font(.system(size: 30))
                        .padding(.trailing, 12)
                }
                .padding(.bottom, 16)
                
                CustomCurvedButtonWidthHeightFree(buttonText: "Uygula", width: UIScreen.main.bounds.width * 0.85, height: 45, fontSize: 20)
                    .padding(.leading, 8)
                    .padding(.bottom, 20)
            }
            .padding(.horizontal, 4)
        }
        .frame(width: UIScreen.main.bounds.width * 0.9)
        .background(.white)
        .cornerRadius(12)
        .shadow(color: .gray, radius: 1)
        
       
        
        
    }
}

struct CustomTextField: View {
    @Binding var text: String
    var placeholder: String
    var placeholderColor: Color
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(placeholderColor)
                    .font(.system(size: 24)) // Placeholder font size
                    .kerning(0.8)
                    .padding(.horizontal, 8) // Placeholder padding
            }
            
            TextField("", text: $text)
                .font(.system(size: 14)) // Textfield font size
                .padding(.horizontal, 4) // Textfield padding
        }
        .frame(width: UIScreen.main.bounds.width * 0.7, height: 50)
        .background(.white)
        .cornerRadius(6)
        .shadow(color: .gray, radius: 1)
    }
}

struct CampaignQRCard_Previews: PreviewProvider {
    static var previews: some View {
        CampaignQRCard()
    }
}
