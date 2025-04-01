//
//  ContentView.swift
//  a11ydemo
//
//  Created by Mark Steadman on 3/22/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            TabView {
             HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                BlasterView()
                    .tabItem {
                        Label("Blasters", systemImage: "bell")
                    }
                SaberView()
                    .tabItem {
                        Label("Sabers", systemImage: "list.bullet")
                    }
            }
        }
        .toolbar{
                ToolbarItem(placement: .principal){
                    Text("SteadyA11y Tester")
                 
                }
                ToolbarItem(placement: .topBarTrailing){
                    Button(action:{
                        
                    }, label:{
                        Image(systemName: "house")
                    })
                }
            }
    
        
       
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ContentView()
        }
    }
}
