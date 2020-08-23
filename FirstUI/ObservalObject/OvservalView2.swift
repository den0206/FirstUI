//
//  OvservalView2.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/22.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import SwiftUI

struct OvservalView2: View {
    
    @EnvironmentObject var userSetting : UserSettings
    
    var body: some View {
        VStack(spacing : 20) {
            Text("\(userSetting.score)")
                       .font(.largeTitle)
            Text(userSetting.name)
            .font(.largeTitle)
            
            Button(action: {
                self.userSetting.score += 1
                self.userSetting.name = "push"
            }) {
                Text("Up Score")
            }
            
            FancyScoreView()
        }
       
    }
}

struct OvservalView2_Previews: PreviewProvider {
    static var previews: some View {
        OvservalView2()
//        OvservalView2().environmentObject(UserSettings())
    }
}
