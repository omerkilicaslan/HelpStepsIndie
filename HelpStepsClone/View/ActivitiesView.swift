//
//  MainView.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 23.09.2023.
//

import SwiftUI

struct ActivitiesView: View {
    
    var body: some View {
        
        ScrollView{
            VStack(spacing: 20){
                TopMainRectangleViewComp()
                
                ActivitiesCardView()
                
                Spacer()
            }
        }
    }
}

struct ActivitiesCardView: View {
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: UIScreen.main.bounds.width * 0.95, height: UIScreen.main.bounds.height * 0.65)
                .foregroundColor(.white)
                .cornerRadius(12)
                .shadow(radius: 1)
            
            VStack{
                //Üstteki yeşil butonlar
                HStack{
                    CurvedButtonGreen(
                        buttonAction: {},
                        buttonString: "Arkadaşlarını Davet Et",
                        imageName: "star.fill",
                        imageLeft: true)
                    Spacer()
                    CurvedButtonGreen(
                        buttonAction: {},
                        buttonString: "Arkadaşlarını Davet Et",
                        imageName: "star.fill",
                        imageLeft: true)
                }
                .padding(.horizontal, 8)
                .padding(.vertical, 20)
                
                CircularViewComp()
                
                //Günlük Adım Sayısı
                VStack(spacing: 0){
                    Text("Günlük")
                        .padding(.horizontal, 5)
                        .padding(.vertical, 3)
                        .background(.black)
                        .cornerRadius(4)
                        .padding(4)
                        .foregroundColor(.white)
                    
                    HStack(alignment: .center, spacing: 4){
                        Image(systemName: "star.fill")
                            .foregroundColor(.black)
                        
                        Text("1,387")
                    }
                    .font(.system(size: 20))
                        
                }
                
                //Ulaşıldı Buton HStacki
                HStack{
                    VStack{
                        Text("Ulaşıldı")
                            .font(.system(size: 13))

                        Text("1,387 adım")
                            .foregroundColor(.black)
                            .font(.system(size: 25))
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text("Ulaşıldı")
                            .font(.system(size: 13))
                        
                        Text("1,387 adım")
                            .foregroundColor(.black)
                            .font(.system(size: 25))
                    }
                }
                .padding(.horizontal,8)
                
                //Premiuma Git Butonu
                CustomCurvedButtonWidthHeightFree(
                    buttonText: "Premiuma Git",
                    buttonImage: "arrow.right",
                    width: UIScreen.main.bounds.width * 0.7,
                    height: 45,
                    fontSize: 20
                )
            }
        }
        .frame(width: UIScreen.main.bounds.width * 0.95)
    }
}


struct CircularCountdownView: View {
    let totalTime: TimeInterval // Total time for the countdown in seconds
    @Binding var timeRemaining: TimeInterval // Remaining time, updated externally
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Circle()
                    .stroke(Color.gray, lineWidth: 10)
                
                Circle()
                    .trim(from: 0, to: CGFloat(timeRemaining / totalTime))
                    .stroke(Color.blue, lineWidth: 10)
                    .rotationEffect(.degrees(-90))
                    .animation(.linear(duration: 1.0))
                
                Text(String(format: "%.0f", timeRemaining))
                    .font(.largeTitle)
            }
            .frame(width: 150, height: 150)
        }
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
    }
}
