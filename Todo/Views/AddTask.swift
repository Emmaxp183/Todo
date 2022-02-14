//
//  AddTask.swift
//  Todo
//
//  Created by admin on 14/02/2022.
//

import SwiftUI

struct AddTask: View {
    @EnvironmentObject var realmManager : RealmManager
    @State  private var title :String = ""
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15) {
            
            Text("Create New Task")
                .foregroundColor(.black)
                .font(.title3).bold()
                .frame(maxWidth : .infinity , alignment: .leading)
                .padding()
        
        TextField("Enter your task here",text: $title)
                .textFieldStyle(.roundedBorder)
            
            Button {
                if title != ""{
                    
                    
                    
                }
                realmManager.addTask(taskTitle: title)
                dismiss()
           
            } label: {
                Text("Add Task")
                    .font(.title3).bold()
                    .foregroundColor(.white)
                    .shadow(radius: 10)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(20)
                    .shadow(radius: 10)
            }
Spacer()
        
        }.padding(.top,40)
        .padding(.horizontal)
        .background(Color(hue: 0.502, saturation: 0.204, brightness: 0.886, opacity: 0.972))
        .ignoresSafeArea()
       
    }
}

struct AddTask_Previews: PreviewProvider {
    static var previews: some View {
        AddTask()
            .environmentObject(RealmManager())
    }
}
