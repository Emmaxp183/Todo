//
//  taskButton.swift
//  Todo
//
//  Created by admin on 14/02/2022.
//

import SwiftUI

struct taskButton: View {
    var body: some View {
        ZStack {
                  Circle()
                .foregroundColor(.blue)
                .shadow(radius: 10)
            Text("+")
                .font(.title3)
                .bold()
                .foregroundColor(.white)
        
        }.frame(height : 50)
    }
}

struct taskButton_Previews: PreviewProvider {
    static var previews: some View {
        taskButton()
    }
}
