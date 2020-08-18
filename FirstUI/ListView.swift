//
//  ListView.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/18.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import SwiftUI

struct ListView: View {
    let hikes = Hike.all()
    
    var body: some View {
        List(self.hikes, id: \.name) { hike in
            HikeCell(hike: hike)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

struct HikeCell: View {
    let hike : Hike
    
    var body: some View {
        HStack {
            Image(hike.imageUrl)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16)
            
            VStack(alignment: .leading) {
                Text(hike.name)
                Text(String(format: "%.2f", hike.miles))
            }
            
        }
    }
}
