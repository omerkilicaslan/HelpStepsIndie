//
//  HelpStepsCloneApp.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 14.09.2023.
//

import SwiftUI


struct NavigationContainerView: View {
    @EnvironmentObject var env: RootEnvironment
    var body: some View {
        NavigationView {
            MainTabBarView()
                .environmentObject(env)
        }
    }
}

@main
struct HelpStepsCloneApp: App {
    @StateObject var rootEnv = RootEnvironment()
    var body: some Scene {
        WindowGroup {
            NavigationContainerView()
                .environmentObject(rootEnv)
        }
    }
}
