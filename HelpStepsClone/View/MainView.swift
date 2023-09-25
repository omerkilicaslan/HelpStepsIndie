//
//  MainView.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 24.09.2023.
//

import SwiftUI

struct MainView: View {
    
    var categories: [String] = ["Tümü", "Bireysel Yararlanıcı", "Çocuk"]
    
    var body: some View {
        VStack{
            FavoriteCard()
            
            HStack(spacing: 0) {
                ForEach(categories, id: \.self) { category in
                    CategoryCard(buttonAction: {
                        
                    }, buttonString: category)
                }
            }
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
