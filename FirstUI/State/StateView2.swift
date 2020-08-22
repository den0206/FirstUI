//
//  StateView2.swift
//  FirstUI
//
//  Created by 酒井ゆうき on 2020/08/22.
//  Copyright © 2020 Yuuki sakai. All rights reserved.
//

import SwiftUI

struct StateView2: View {
    @State var tasks = [Task]()
    
    
    var body: some View {
        List {
            
            Button(action: { self.addTask() }) {
                Text("Change name")

            }

            ForEach(tasks) { task in
               
                Text(task.name)
                
            }
        }
    }
    
    private func addTask() {
        self.tasks.append(Task(name: "New"))
    }
}

struct StateView2_Previews: PreviewProvider {
    static var previews: some View {
        StateView2()
    }
}
