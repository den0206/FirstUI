//
//  ContentView.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/18.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center){
            
            Image("costa-rica")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(50)
                .padding(.all)
//                .clipShape(Circle())
            
            Text("Hello, World!")
                .font(.largeTitle)
                .foregroundColor(.green)
            
            Text("secoun line")
                .font(.title)
                .foregroundColor(.orange)
            
            HStack {
                Text("Left sider")
                Text("Right side")
                    .padding(.all)
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
