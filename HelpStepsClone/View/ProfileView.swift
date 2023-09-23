//
//  ProfileView.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 15.09.2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack{
            LinearGradient(
                        gradient: Gradient(colors: [Color.green, Color.white]),
                        startPoint: .top,   // 30% green at the top
                        endPoint: .bottom  // 70% white at the bottom
                    )
                    .edgesIgnoringSafeArea(.all)
            
            VStack{
                VStack(alignment: .leading){
                    ProfileCardView()
                        .padding(.vertical)
                    
                    WalletCardView()
                        .padding(.vertical)
                    
                }
                
                VStack{
                    
                    Section{
                        List{
                            Section(header: Text("Arkadaşlık")) {
                                ListRowView(
                                    title: "Arkadaş Ekle",
                                    leadingImageName: "person.fill.badge.plus"
                                )
                                
                                ListRowView(
                                    title: "Arkadaşlık İstekleri",
                                    leadingImageName: "person.fill.badge.plus"
                                )
                            }
                            
                            Section(header: Text("Bilgiler")) {
                                ListRowView(
                                    title: "Adım Şampiyonaları",
                                    leadingImageName: "trophy.fill"
                                )
                                
                                ListRowView(
                                    title: "Davet Gönder",
                                    leadingImageName: "envelope.fill"
                                )
                                
                                ListRowView(
                                    title: "Favori Ürünler",
                                    leadingImageName: "heart.fill"
                                )
                                
                                ListRowView(
                                    title: "Rozetler",
                                    leadingImageName: "rosette"
                                )
                            }
                        }
                        .scrollContentBackground(.hidden)
                        
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.95)
                    
                    
                }
            }
        }
    }
}

 

struct ListRowView: View {
    let title: String
    let leadingImageName: String

    var body: some View {
        HStack {
            if leadingImageName != nil {
                Image(systemName: leadingImageName)
                    .font(.system(size: 24))
                    .foregroundColor(.green)
                    
            }
                Text(title)
                Spacer()
                Image(systemName: "arrow.right")
        }
        .contentShape(Rectangle())

    }

}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
