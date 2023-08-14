//
//  AbdullaView.swift
//  About-Us
//
//  Created by Mansour Mohammed Alshebli on 14/08/2023.
//


/* Customize ur view the way u like after that, replace it with the text() view;
Text("Abdulla")
    .tabItem {
        Label("Abdulla", systemImage: "person")
    }
CHANGE IT TO:
 
AbdullaView()
     .tabItem {
         Label("Abdulla", systemImage: "person")
     }
 
 THE CHANGE SHOULD HAPPEN IN ContentView()
 */

import SwiftUI

struct AbdullaView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AbdullaView_Previews: PreviewProvider {
    static var previews: some View {
        AbdullaView()
    }
}
