//
//  FancyScoreView.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/23.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import SwiftUI

struct FancyScoreView: View {
    
    @EnvironmentObject var userSettings : UserSettings
    var body: some View {
        VStack {
            
            Text("\(userSettings.score)")
            Button(action: {self.userSettings.score += 1}) {
                Text("Increment")
            }.padding().background(Color.green)
            

        }.background(Color.orange)
    }
}

struct FancyScoreView_Previews: PreviewProvider {
    static var previews: some View {
        FancyScoreView()
    }
}


