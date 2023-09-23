//
//  TopMainRectangleViewComp.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 23.09.2023.
//

import SwiftUI

struct TopMainRectangleViewComp: View {
    
    var body: some View {
       Rectangle()
            .foregroundColor(.purple)
            .cornerRadius(75)
            .frame(width: UIScreen.main.bounds.width * 0.9, height: 100)

    }
}

struct TopMainRectangleViewComp_Previews: PreviewProvider {
    static var previews: some View {
        TopMainRectangleViewComp()
    }
}
