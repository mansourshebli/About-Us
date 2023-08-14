//
//  ContentView.swift
//  About-Us
//
//  Created by Mansour Mohammed Alshebli on 14/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Mansour")
                .tabItem {
                    Label("Mansour", systemImage: "person")
                }
            
            Text("Abdulla")
                .tabItem {
                    Label("Abdulla", systemImage: "person")
                }
            
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

