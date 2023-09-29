//
//  NoInternetConnectionView.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 29.09.2023.
//

import SwiftUI

struct NoInternetConnectionView: View {
    var body: some View {
        VStack{
            ZStack{
                Circle()
                    .foregroundColor(.gray)
                    .frame(width: 120,height: 120)
                    .opacity(0.5)
                
                Image(systemName: "wifi.slash")
                    .font(.system(size: 45))
                    .foregroundColor(.white)
            }
            .padding(.bottom, 16)
            
            Text("No Internet Connection")
                .font(.system(size: 14))
                .padding(.bottom, 16)
            
            Text("Sorry, no internet connection. Please try again when you are online again")
                .font(.system(size: 14))
                .kerning(0.2)
                .padding(.horizontal, 12)
                .padding(.bottom, 16)
            
            CustomCurvedButtonWidthHeightFree(buttonText: "Tekrar Dene", width: UIScreen.main.bounds.width * 0.9, height: 45, fontSize: 16)
        }
    }
}

struct NoInternetConnectionView_Previews: PreviewProvider {
    static var previews: some View {
        NoInternetConnectionView()
    }
}
