//
//  HView.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 25.09.2023.
//

import SwiftUI

struct HView: View {
    let screenWidth = UIScreen.main.bounds.width
    let rectangleHeight: CGFloat = 300
    
    var body: some View {
        VStack(alignment: .leading){
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: screenWidth, height: rectangleHeight)
                    
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: screenWidth, height: rectangleHeight)
                }
            }
            .frame(height: rectangleHeight)
            
            VStack(alignment: .leading){
                Text("Selam, Ömer Faruk  👋")
                    .bold()
                    .font(.system(size: 20))
                    .padding(.vertical,8)
                
                Text("Ne aramıştın?")
                    .bold()
                    .font(.system(size: 28))
            }
            .padding(.horizontal, 20)
        }
    }
}

struct HView_Previews: PreviewProvider {
    static var previews: some View {
        HView()
    }
}
