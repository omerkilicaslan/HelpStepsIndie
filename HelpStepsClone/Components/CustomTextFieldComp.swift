//
//  CustomTextFieldComp.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 23.09.2023.
//

import SwiftUI

struct CustomTextFieldComp: View {
    @Binding var text: String
    var placeHolder: String
    var header: String
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5){
            Text(header)
                .bold()
            TextField("Giriniz", text: $text)
                .padding()
                .frame(height: 50) // Adjust the height as needed
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
        }
        .padding(.horizontal)
        
    }
}
