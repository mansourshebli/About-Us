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
            // Run the program; so u can click the button!
            MansourView()
                .tabItem {
                    Label("Mansour", systemImage: "person")
                }
            
            AbdullaView()
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

