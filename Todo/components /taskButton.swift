//
//  taskButton.swift
//  Todo
//
//  Created by admin on 14/02/2022.
//

import SwiftUI

struct taskButton: View {
    var body: some View {
        
       
            ZStack{
                
                    Text("Add Task")
                        .font(.title3).bold()
                    
                    
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(15)
                    .padding()
                }

                
                        }
                    
                
            }
        
        


    


struct taskButton_Previews: PreviewProvider {
    static var previews: some View {
        taskButton()
    }
}
