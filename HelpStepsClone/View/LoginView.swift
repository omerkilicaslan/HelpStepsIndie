//
//  LoginView.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 14.09.2023.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            
            Text("Help Steps'e \nHoş Geldiniz!")
                .font(.largeTitle)
                .bold()
                .padding(.top,50)
            
            Spacer()
            
            VStack{
                CurvedButton(buttonAction: {
                    print("Kayıt Ol Tıklandı")
                }, buttonString: "Kayıt Ol")
                .frame(width: 300)
                .cornerRadius(16)
                
                HStack{
                    Text("Hesabınınız Var Mı?")
                        .font(.headline)
                    Text("Giriş Yap")
                        .bold()
                }
            }
            .padding(.bottom, 50)
            
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
