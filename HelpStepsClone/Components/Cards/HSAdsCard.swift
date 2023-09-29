//
//  HSAdsCard.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 29.09.2023.
//

import SwiftUI

struct HSAdsCard: View {
    let screenWidth = UIScreen.main.bounds.width
    var rectangleHeight: CGFloat = 350
    
    var body: some View {
         VStack{
             ZStack{
                 ScrollView(.horizontal, showsIndicators: false) {
                     HStack(spacing: 20) {
                         Rectangle()
                             .fill(Color.gray)
                             .frame(width: screenWidth, height: rectangleHeight)
                         
                         Rectangle()
                             .fill(Color.cyan)
                             .frame(width: screenWidth, height: rectangleHeight)
                     }
                 }
                 .frame(height: rectangleHeight)
                 .opacity(0.4)
                 
                 VStack{
                     Spacer()
                     HStack(){
                         Spacer()
                         VStack(alignment: .trailing, spacing: 0){
                             Text("Help Steps Mataralar")
                                 .bold()
                                 .padding(.vertical, 6)
                             Text("Özel Üretilen Help Steps Matara HS Market'te seni bekliyor!")
                         }
                         .frame(width: UIScreen.main.bounds.width / 1.25)
                         .multilineTextAlignment(.trailing)
                     }
                     .offset(y: 55)
                     Spacer()
                     
                     CustomCurvedButtonWidthHeightFree(buttonText: "HS Markete Git", width: UIScreen.main.bounds.width * 0.8, height: 50, fontSize: 15)
                         .padding(.bottom, 16)
                 }
                 .frame(height: rectangleHeight)
                 
             }
        }
         .cornerRadius(20)
         .padding(.horizontal, 16)
    }
}

struct HSAdsCard_Previews: PreviewProvider {
    static var previews: some View {
        HSAdsCard()
    }
}
