//
//  TabBar.swift
//  HelpStepsClone
//
//  Created by mert Kanak on 14.09.2023.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            Text("Ana Sayfa")
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Ana Sayfa")
                }
                .tag(0)

            Text("Aktiviteler")
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Aktiviteler")
                }
                .tag(1)
            Text("NE SANDIN KANKS")
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("")
                .tag(2)
                }
            Text("Topluluk")
                .tabItem {
                    Image(systemName: "4.circle")
                    Text("Topluluk")
                .tag(3)
                }
            Text("Profil")
                .tabItem {
                    Image(systemName: "5.circle")
                    Text("Profil")
                .tag(4)
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
