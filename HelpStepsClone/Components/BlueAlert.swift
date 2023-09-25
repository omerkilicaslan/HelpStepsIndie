//
//  BlueAlert.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 23.09.2023.
//

import SwiftUI

struct TransactionAlertWarningWithButtonVertical : View{
    var topMessage : String
    var bottomMessage : String
    var topButtonString : String
    var topButtonAction : (()->Void)
    var bottomButtonString : String? = nil
    var bottomButtonAction : (()->Void)? = nil
    var body : some View{
        VStack{
            Rectangle()
                .frame(width:UIScreen.main.bounds.width * 0.4 , height: 3)
                .foregroundColor(.gray)
                .padding(.vertical, 16)
            
            Text("Tebrikler!")
                .bold()
                .font(.system(size: 20))
                .padding(.bottom, 8)
            
            Text(topMessage)
                .font(.system(size: 14))
                .padding(.bottom,8)
            
            Circle()
                .foregroundColor(.green)
                .frame(width: 130, height: 130)
                .padding(.bottom, 8)
            
            VStack(spacing: 5){
                Text("Dönüştürdünüz")
                    .font(.system(size: 14))
                
                Text("1,387 HS")
                    .foregroundColor(.green)
                    .bold()
                    .font(.system(size: 26))
            }
            
            HStack{
                VStack(alignment: .center, spacing: 4){
                    Text("Adımlarınız")
                        .font(.system(size: 16))
                    Text("1,387")
                        .bold()
                        .foregroundColor(.black)
                        .font(.system(size: 24))
                }
                .padding(.horizontal, 20)
                .padding(.vertical)
                
                
                Spacer()
                
                VStack(alignment: .center, spacing: 4){
                    Text("Kalan HS")
                        .font(.system(size: 16))

                    Text("0")
                        .bold()
                        .foregroundColor(.black)
                        .font(.system(size: 24))
                }
                .padding(.horizontal, 20)
                .padding(.vertical)
                
            }
            .background(.white)
            .cornerRadius(12)
            .shadow(color: .green, radius: 1)
            
            Spacer()
        }
        .padding(.horizontal,16)
    }
}

struct TransactionAlertWarningWithButtonVertical_Previews: PreviewProvider {
    static var previews: some View {
        TransactionAlertWarningWithButtonVertical(
            topMessage: "TopMessage",
            bottomMessage: "bottomMessage",
            topButtonString: "topButtonString",
            topButtonAction: {})
    }
}
