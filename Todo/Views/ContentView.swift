//
//  ContentView.swift
//  Todo
//
//  Created by admin on 14/02/2022.
//

import SwiftUI
import RealmSwift

struct ContentView: View {
    
@StateObject var realmManager = RealmManager()
@State private var ShowtaskView = false


    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            
            TaskView()
                .environmentObject(realmManager)
            
               
                taskButton().onTapGesture {
                    
                    
                               ShowtaskView.toggle()
                
                
                }
                
        
            

        
        }.sheet(isPresented: $ShowtaskView){
            
            AddTask()
                .environmentObject(realmManager)
        }
        .frame(maxWidth : .infinity , maxHeight: .infinity, alignment: .bottom)
            .background(Color(hue: 0.502, saturation: 0.204, brightness: 0.886, opacity: 0.972))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
