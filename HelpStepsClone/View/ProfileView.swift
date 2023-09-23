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
            
            VStack(alignment: .leading){
                ProfileCardView()
                    .padding(.vertical)
                
                WalletCardView()
                    .padding(.vertical)
                
                
            }
            .navigationTitle("Profil")
                
            
            
        }
        
        
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
