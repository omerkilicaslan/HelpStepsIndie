//
//  Constants.swift
//  HelpStepsClone
//
//  Created by Ömer Faruk Kılıçaslan on 23.09.2023.
//

import Foundation
import SwiftUI

struct Constants {
    
    static var rootEnv = RootEnvironment()
    
    static func hideKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }

    static let inviteFriends = "Arkadaşlarını Davet Et"
    static let yourSteps = "Adımlarınız"
    static let currentHS = "Mevcut HS"
    static let transfer = "Transfer"

}

extension String {
    static let emptyString = ""
    static let blankSpace = " "
}
