//
//  HikeDetailView.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/19.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import SwiftUI

struct HikeDetailView: View {
    let hike : Hike
    @State private var zoomed : Bool = false
    
    var body: some View {
        VStack {
            Image(hike.imageUrl)
            .resizable()
                .aspectRatio(contentMode:self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                        
                    }
            }
            
            Text(hike.name)
            Text(String(format: "%.2f", hike.miles))
            
        }.navigationBarTitle(Text(hike.name), displayMode: .inline)
    }
}

struct HikeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetailView(hike: Hike(name: "aa", imageUrl: "tea_image", miles: 5.0))
    }
}
