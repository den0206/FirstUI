//
//  UserSettings.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/22.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class UserSettings : ObservableObject {
    
    @Published var score : Int = 0
    @Published var name : String = "john"
    
    
}
