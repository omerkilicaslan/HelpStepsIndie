//
//  Button.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 14.09.2023.
//

import Foundation
import SwiftUI


struct CurvedButton: View {
    
    var buttonAction: (()->Void)?
    var buttonString: String
    
    var body: some View {
        Button(self.buttonString){
            self.buttonAction?()
        }
        .buttonStyle(BlueFullWithButton())

    }
}

struct CustomTextField: View {
    @Binding var text: String
    var placeHolder: String
    var header: String
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5){
            Text(header)
                .bold()
            TextField("Giriniz", text: $text)
                .padding()
                .frame(height: 50) // Adjust the height as needed
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
        }
        .padding(.horizontal)
        
    }
}

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

struct LightSkyFullWithButton : ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(.top, 12)
            .padding(.bottom, 12)
            .frame(minWidth:0.0,maxWidth: .infinity)
            .multilineTextAlignment(.center)
            .foregroundColor(.blue)
            .background(Color.white)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 4.0).stroke(Color.blue.opacity(0.33), lineWidth: 1))
        
    }
}

struct BlueFullWithButton : ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(.top, 12)
            .padding(.bottom, 12)
            .multilineTextAlignment(.center)
            .frame(minWidth:0.0,maxWidth: .infinity)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(20)
        
    }
}
