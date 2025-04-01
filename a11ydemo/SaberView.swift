//
//  SaberView.swift
//  a11ydemo
//
//  Created by Mark Steadman on 3/22/25.
//
import SwiftUI


struct SaberView: View {
    var body: some View {
        VStack{
            Text("Saber Sale")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment:.leading)
                .padding()
            List {
                Section(header: Text("Jedi Blades")) {
                    Text("Ashoka Tano Blade")
                    Text("Obi Wan Blade")
                    Text("Yoda Blade")
                    Text("Plo Koon Blad")
                    Text("Ana Skywalker Blade")
                }
                Section(header: Text("Sith Blades")) {
                    Text("Darth Bane")
                    Text("Darth Maul")
                    Text("Darth Sidious")
                }
                
            }
        }
    }
}

#Preview {
    TabView {
        SaberView()
            .tabItem { Label("More", systemImage: "list.bullet") }
    }
}
