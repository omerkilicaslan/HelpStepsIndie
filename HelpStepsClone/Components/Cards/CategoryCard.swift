//
//  CategoryCard.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 24.09.2023.
//

import SwiftUI

struct CategoryCard: View {
    var buttonAction: (() -> Void)
    var buttonString: String
    
    var body: some View {
        Button(action: {
            self.buttonAction()
        }) {
            Text(buttonString)
                .lineLimit(1)
                .font(.system(size: 15))
                .foregroundColor(.black)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .background(Color.green)
                .cornerRadius(20)
                

        }
    }
}

struct CategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCard(buttonAction: {}, buttonString: "Bireysel Yarar")
    }
}
