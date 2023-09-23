//
//  CircularViewComp.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 23.09.2023.
//

import SwiftUI

struct CircularViewComp: View {
    var body: some View {
        //Ortadaki Yuvarlak Görsel
        ZStack {
            Circle()
                .stroke(Color.gray, lineWidth: 10)
            
            Circle()
                .stroke(Color.blue, lineWidth: 10)
                .rotationEffect(.degrees(-90))
                .animation(.linear(duration: 1.0))
            
            Circle()
                .frame(width: 50)
                .foregroundColor(.white)
            
            Text("H")
                .font(.largeTitle)
        }
        .frame(width: 250, height: 250)
        .shadow(radius: 10)
        .padding(.vertical, 8)
    }
}

struct CircularViewComp_Previews: PreviewProvider {
    static var previews: some View {
        CircularViewComp()
    }
}
