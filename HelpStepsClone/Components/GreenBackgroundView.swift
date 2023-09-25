//
//  GreenBackgroundView.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 25.09.2023.
//
import SwiftUI
import Foundation

struct GreenBackgroundView: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color.green, Color.white]),
            startPoint: .top,   // 30% green at the top
            endPoint: .bottom  // 70% white at the bottom
        )
        .edgesIgnoringSafeArea(.all)
    }
}


