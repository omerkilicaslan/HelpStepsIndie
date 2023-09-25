//
//  RootEnvironment.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 24.09.2023.
//

import Foundation
import SwiftUI
import UIKit


class RootEnvironment: ObservableObject {
    
    var partialView = AnyView(EmptyView())
    
    @Published var showPartialSheet: Bool = false
        {
        willSet {
            objectWillChange.send()
        }
    }
    @Published var isModal: Bool = false
        {
        willSet {
            objectWillChange.send()
        }
    }
    
    @Published var withInfoDesign: Bool = false
        {
        willSet {
            objectWillChange.send()
        }
    }
 
    static func showPartialSheet(view:AnyView,isModal:Bool = false) {
        DispatchQueue.main.async {
            Constants.rootEnv.isModal = isModal
            Constants.rootEnv.withInfoDesign = false
            Constants.rootEnv.showPartialSheet = true
            Constants.rootEnv.partialView = view
        }
    }
    
    static func hidePartialSheet() {
        Constants.rootEnv.showPartialSheet = false
        Constants.rootEnv.withInfoDesign = false
        Constants.rootEnv.partialView = AnyView(EmptyView())
    }
    
}


