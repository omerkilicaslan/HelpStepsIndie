//
//  Button.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 14.09.2023.
//

import Foundation
import SwiftUI


struct CurvedButton: View {
    
    var buttonAction: (()->Void)?
    var buttonString: String
    
    var body: some View {
        Button(self.buttonString){
            self.buttonAction?()
        }
        .buttonStyle(BlueFullWithButton())

    }
}

struct CustomCurvedButtonWidthHeightFree: View{
    
    var buttonText: String
    var buttonImage: String?
    var width: CGFloat
    var height: CGFloat
    var fontSize: CGFloat
    
    var body: some View {
        Button {
            
        } label:
        {
            HStack{
                Text(buttonText)
                    .font(.system(size: fontSize))
                    .bold()
                    .foregroundColor(Color.white)
                    .kerning(-0.31)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,8)
                
                if buttonImage != nil {
                    Image(systemName: buttonImage ?? "")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.leading)
                }
            }
        }
        .multilineTextAlignment(.center)
        .frame(width: width, height: height)
        .foregroundColor(.white)
        .background(Color.green)
        .cornerRadius(20)
    }
}


struct CurvedButtonGreen: View {
    
    var buttonAction: (()->Void)
    var buttonString: String
    var imageName: String?
    var imageLeft: Bool = false

    var body: some View {
        
        if imageName != nil{
            if imageLeft {
                Button {
                    self.buttonAction()
                } label: {
                    HStack{
                        Image(systemName: imageName ?? "")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(.leading)
                        
                        Text(buttonString)
                            .font(.caption)
                            .foregroundColor(Color.white)
                            .kerning(-0.31)
                            .lineLimit(nil)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal,8)
                    }
                }
                .multilineTextAlignment(.center)
                .frame(width: UIScreen.main.bounds.width * 0.40, height: 55)
                .foregroundColor(.white)
                .background(Color.green)
                .cornerRadius(20)
                

            }
            else{
                Button {
                    self.buttonAction()
                } label: {
                    HStack(alignment: .center){
                        Text(buttonString)
                            .font(.caption)
                            .foregroundColor(Color.black)
                            .kerning(-0.31)
                            .lineLimit(nil)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal,8)
                        
                        Image(systemName: imageName ?? "")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(.trailing)
                    }
                }
                .multilineTextAlignment(.center)
                .frame(width: UIScreen.main.bounds.width * 0.40, height: 55)
                .foregroundColor(.white)
                .background(Color.green)
                .cornerRadius(20)

            }
        }

    }
}





struct LightSkyFullWithButton : ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(.top, 12)
            .padding(.bottom, 12)
            .frame(minWidth:0.0,maxWidth: .infinity)
            .multilineTextAlignment(.center)
            .foregroundColor(.blue)
            .background(Color.white)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 4.0).stroke(Color.blue.opacity(0.33), lineWidth: 1))
        
    }
}

struct BlueFullWithButton : ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(.top, 12)
            .padding(.bottom, 12)
            .multilineTextAlignment(.center)
            .frame(minWidth:0.0,maxWidth: .infinity)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(20)
        
    }
}

struct WhiteFullWithButton : ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(.top, 12)
            .padding(.bottom, 12)
            .frame(minWidth:0.0,maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(4.0)
        
    }
}
