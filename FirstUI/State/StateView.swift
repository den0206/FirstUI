//
//  StateView.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/22.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import SwiftUI

struct StateView: View {
    
    @State var name = "John"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(name)
                .font(.largeTitle)
            
            Button(action: {
                self.name = "mes"
            }) {
                Text("Change name")
            }
        }
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
