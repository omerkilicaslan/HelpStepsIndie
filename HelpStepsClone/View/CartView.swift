//
//  CartView.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 25.09.2023.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var env : RootEnvironment

    var body: some View {
        VStack{
            ZStack{
                Circle()
                    .frame(width: 200,height: 200)
                    .foregroundColor(.green)
                Image(systemName: "gift.fill")
                    .resizable()
                    .frame(width: 75,height: 75)
                    .foregroundColor(.white)
                    
            }
            
            Text("Oppss!")
                .foregroundColor(.black)
                .bold()
                .font(.system(size: 24))
                .padding(.top, 16)
                .padding(.bottom, 8)
            
            Text("Üzgünüz, sepetinizde hiç ürün bulunmuyor")
                .foregroundColor(.gray)
                .padding(.bottom, 8)

            
            CustomCurvedButtonWidthHeightFree(
                buttonText: "Kategorileri İncele",
                width: UIScreen.main.bounds.width * 0.9,
                height: 45,
                fontSize: 20
            )

        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
