//
//  TaskRow.swift
//  Todo
//
//  Created by admin on 14/02/2022.
//

import SwiftUI

struct TaskRow: View {
    //properties
    var task : String
    var completed : Bool
    
    var body: some View {
        HStack(spacing : 20) {
            Image(systemName: completed ? "checkmark.circle" : "circle")
                
            Text(task)
                .fontWeight(.bold)
                .foregroundColor(.black)
        }
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: "Do Bible Study", completed: true)
    }
}

