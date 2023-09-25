//
//  TabBar.swift
//  HelpStepsClone
//
//  Created by mert Kanak on 14.09.2023.
//

import SwiftUI

struct MainTabBarView: View {
    @EnvironmentObject var env: RootEnvironment
    var body: some View {
        TabView {
            Text("Ana Sayfa")
                    .tabItem {
                        Image(systemName: "house")
                        Text("Ana Sayfa")
                    }
                    .tag(0)

            ActivitiesView()
                .tabItem {
                    Image(systemName: "figure.run.square.stack.fill")
                    Text("Aktiviteler")
                }
                .tag(1)
            
            Text("NE SANDIN KANKS")
                .tabItem {
                    Image(systemName: "shadow")
                    Text("")
                }
                .tag(2)
            CartView()
                .environmentObject(self.env)
                .tabItem {
                    Image(systemName: "basket.fill")
                    Text("Sepet")
                }
                .tag(3)
            
            ProfileView()
                .environmentObject(self.env)
                .tabItem {
                    Image(systemName: "person")
                    Text("Profil")
                }
                .tag(4)
        }
    }
}

