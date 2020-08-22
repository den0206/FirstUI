//
//  ObservalView.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/22.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import SwiftUI

struct ObservalView: View {
    
    @ObservedObject var fancyTimer = FancyTimer()
    
    var body: some View {
        Text("\(fancyTimer.value)")
            .font(.largeTitle)
    }
}

struct ObservalView_Previews: PreviewProvider {
    static var previews: some View {
        ObservalView()
    }
}
