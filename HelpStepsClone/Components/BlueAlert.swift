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
            Group{
                Text(self.topMessage)
                    .foregroundColor(Color.black)
                    .kerning(-0.31)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,8)
                
                Button(self.topButtonString){
                    self.topButtonAction()
                }
                .buttonStyle(BlueFullWithButton())
            }

            Group{
                Text(self.bottomMessage)
                    .foregroundColor(Color.black)
                    .kerning(-0.31)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,8)
                
                if self.bottomButtonString != nil{
                    Button(self.bottomButtonString ?? ""){
                        self.bottomButtonAction?()
                    }
                    .buttonStyle(LightSkyFullWithButton())
                }
            }
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
