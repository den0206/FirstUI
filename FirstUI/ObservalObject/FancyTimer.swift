//
//  FancyTimer.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/22.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class FancyTimer : ObservableObject {
    
    @Published var value : Int = 0
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (timer) in
            self.value += 1
        }
    }
    
}
