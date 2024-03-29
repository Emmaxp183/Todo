//
//  TaskView.swift
//  Todo
//
//  Created by admin on 14/02/2022.
//

import SwiftUI

struct TaskView: View {
    @EnvironmentObject var realmManager : RealmManager
    var body: some View {
        VStack {
            Text("Hey Manager")
            
                .font(.title3).bold()
                .padding()
                .frame(maxWidth : .infinity , alignment: .leading)
            
            
            List {
                ForEach(realmManager.tasks, id: \.id) { task in
                    if !task.isInvalidated {
                        
                        TaskRow(task: task.title, completed: task.completed)
                         .onTapGesture{
                             realmManager.updateTask(id: task.id, completed:!task.completed)}
                         .swipeActions (edge: .trailing){
                             Button(role: .destructive){
                                
                                 realmManager.deleteTask(id: task.id)
                                 
                                 
                             } label:{
                                 Label("Delete", systemImage: "trash")
                             }
                         
                         }
                       
                        
                        
                        
                    }
                       
                
                }
                .listRowSeparator(.hidden)
           
            
            }
            .onAppear {
                UITableView.appearance().backgroundColor = UIColor.clear
                UITableViewCell.appearance().backgroundColor = UIColor.clear
            }
        
        
        }.frame(maxWidth : .infinity, maxHeight: .infinity).background(Color(hue: 0.502, saturation: 0.204, brightness: 0.886, opacity: 0.972))
        
   
    
    
    
    
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView()
            .environmentObject(RealmManager())
    }
}
