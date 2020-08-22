//
//  BindView.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/22.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import SwiftUI

struct BindView: View {
    
    let epispode = Episode(name: "Name", track: "Track")
    @State private var isPlaying = false
    
    var body: some View {
        VStack {
            Text(epispode.name)
                .font(.title)
                .foregroundColor(isPlaying ? .green : .gray)
            
            
            Text(epispode.track)
                .foregroundColor(.secondary)
            
            PlayButton(isPlaying: $isPlaying)
        }
    }
    
    
}

struct PlayButton : View {
    
    @Binding var isPlaying : Bool
    
    var body: some View {
        Button(action: {
            self.isPlaying.toggle()
        }) {
            Text("Play")
        }.padding(12)
 
    }
}

struct BindView_Previews: PreviewProvider {
    static var previews: some View {
        BindView()
    }
}

