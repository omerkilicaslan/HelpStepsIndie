//
//  RegisterView.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 14.09.2023.
//

import SwiftUI

struct RegisterView: View {
    @State var email: String = ""
    @State var name: String = ""
    @State var surname: String = ""
    
    @State var isChecked: Bool = false

    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack{
                    CustomTextField(text: $email, placeHolder: "E-posta adresiniz", header: "E-Posta")
                        .padding(.bottom, 30)
                    
                    CustomTextField(text: $name, placeHolder: "E-posta adresiniz", header: "Ad")
                        .padding(.bottom, 30)

                    CustomTextField(text: $surname, placeHolder: "E-posta adresiniz", header: "Soyadınız")
                        .padding(.bottom, 30)
                    
                    CustomTextField(text: $surname, placeHolder: "E-posta adresiniz", header: "Soyadınız")
                        .padding(.bottom, 30)
                    
                    CustomTextField(text: $surname, placeHolder: "E-posta adresiniz", header: "Davet Kodu")
                        .padding(.bottom, 30)
                    
                    VStack(alignment: .leading, spacing: 5){
                        HStack{
                            Image(systemName: isChecked ? "checkmark.seal.fill" : "checkmark.seal")
                            Text("Sözleşmeyi Okudum, Onaylıyorum")
                           
                        }
                        .onTapGesture {
                            self.isChecked.toggle()
                        }
                        Text("Lütfen Gizlilik Politikası ve Aydınlatma Metni ve Erişim ve kullanım koşulları ve Son Kullanıcı Lisans Sözleşmesi Metnini Okumak için tıklayınız")
                            .font(.caption)
                            .padding(.horizontal, 12)
                    }
                    .padding(.vertical, 6)
                    .padding(.horizontal, 6)
                    
                    
                    
                    CurvedButton(buttonAction: {
                        print("Kayıt Ol Tıklandı")
                    }, buttonString: "Kayıt Ol")
                    .frame(width: 300)
                    .cornerRadius(16)
                    

                }
            }
            .navigationBarTitle("Kayıt Ol", displayMode: .inline) // Set your title here
            .padding(.bottom, 16) // Add padding between title and content
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
