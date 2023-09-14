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
                    Image(systemName: "house")
                    Text("Ana Sayfa")
                }
                .tag(0)

            Text("Aktiviteler")
                .tabItem {
                    Image(systemName: "figure.run.square.stack.fill")
                    Text("Aktiviteler")
                }
                .tag(1)
            Text("NE SANDIN KANKS")
                .tabItem {
                    Image(systemName: "shadow")
                    Text("")
                .tag(2)
                }
            Text("Topluluk")
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Topluluk")
                .tag(3)
                }
            Text("Profil")
                .tabItem {
                    Image(systemName: "person")
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
