//
//  WalletCardView.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 15.09.2023.
//

import SwiftUI

struct ProfileCardView: View {
    
    var body: some View {
        HStack(alignment: .top){
            Circle()
                .frame(width: 100, height: 100)
                .padding(.horizontal,8)
            
            VStack(alignment: .leading){
                Text("Ömer Faruk Kılıçaslan")
                    .foregroundColor(.black)
                    .font(.system(size: 18))

                
                Text("kilicaslanomerkuf@gmail.com")
                    .foregroundColor(.black)
                    .font(.system(size: 14))

                
                Text("+905532356563")
                    .foregroundColor(.black)
                    .font(.system(size: 14))
            }
            .padding(.top,8)
            .bold()
                
        }
    }
}

struct WalletCardView: View {
    var header: String = "Cüzdan"
    var body: some View {
        VStack(alignment: .leading, spacing: 3){
            HStack{
                Text(header)
                    .foregroundColor(.black)
                    .font(.system(size: 20))
                    .bold()
                    .kerning(0.45)
                    .padding(.leading, 10)
                
                Spacer()
                
                Text("Tümünü Gör")
                    .foregroundColor(.green)
                    .bold()
                    .font(.system(size: 14))
                    .padding(.trailing, 10)
            }
            .frame(width: UIScreen.main.bounds.width * 0.9)
            
            HStack(spacing: 4) {
                SingleWalletCard(image: Image(systemName: "shoeprints.fill"), title: Constants.yourSteps, value: "1.55")
                
                Rectangle()
                    .frame(width: 1, height: 50)
                    .foregroundColor(.gray)
                    .offset(y: -20)
                
                SingleWalletCard(image: Image(systemName: "figure.handball"), title: Constants.currentHS, value: "1.55")
                
                Rectangle()
                    .frame(width: 1, height: 50)
                    .foregroundColor(.gray)
                    .offset(y: -20)
                
                SingleWalletCard(image: Image(systemName: "rosette"), title: Constants.transfer, value: "1.55")
            }
            .background(Color.white) // Beyaz arka plan ekledik
            .cornerRadius(6)
            .frame(width: UIScreen.main.bounds.width * 0.9)
            .shadow(radius: 1) // Shadow ekledik
            
        }
    }
}

struct SingleWalletCard: View {
    var image: Image
    var title: String
    var value: String
    var body: some View {
        VStack(spacing: 6){
            image
                .font(.title)
                .padding(.top,8)
            
            Text(title)
                .foregroundColor(.black)
                .font(.body)
            
            Text("\(value)K")
                .foregroundColor(.green)
                .font(.system(size: 28))
                .kerning(0.31)
                .padding(.horizontal,16)
                .padding(.bottom,8)
                .bold()
        }
        .cornerRadius(12)
        
    }
}

struct WalletCardView_Previews: PreviewProvider {
    static var previews: some View {
        WalletCardView()
    }
}
