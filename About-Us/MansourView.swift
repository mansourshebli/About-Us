//
//  MansourView.swift
//  About-Us
//
//  Created by Mansour Mohammed Alshebli on 14/08/2023.
//

import SwiftUI

struct MansourView: View {
    
    // State variables to control UI elements
    @State private var isTagVisible = true
    @State private var pBgColor = Color.blue
    @State private var sBgColor = Color.cyan
    
    var body: some View {
        ZStack {
            // Creating a gradient background using the selected colors
            LinearGradient(colors: [pBgColor, sBgColor],
                           startPoint: .top,
                           endPoint: .center)
                .ignoresSafeArea()  // Extends the gradient to the whole screen
            
            // Creating a blue circle at the top
            Circle()
                .foregroundColor(.indigo)
                .shadow(color: .indigo.opacity(1),
                        radius: 10, x: 0.0, y: 0.0)
                .offset(x: 0, y: -430)
            
            VStack {
                // Text "Hello 👋🏻 I'm" displayed with a large monospaced font
                Text("Hello 👋🏻 I'm")
                    .font(.system(.largeTitle, design: .monospaced))
                    .bold()
                    .foregroundColor(.orange)
                    .frame(width: 250, height: 250)  // Creating a frame for the text
                    .offset(x: 0, y: -150)  // Adjusting the position
                
                Spacer()
                    .frame(height: 50)  // Creating vertical spacing
                
                // Text "Mansour" displayed with a large serif font
                Text("Mansour")
                    .font(.system(size: 50, design: .serif))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .frame(width: 300, height: 300)  // Creating a frame for the text
                    .offset(x: -10, y: -300)  // Adjusting the position
                    .rotation3DEffect(.degrees(-10), axis: (x: 1, y: 1, z: 0))  // Applying a 3D rotation
            }
            
            // Information box displayed if the toggle is on
            ZStack {
                if isTagVisible {
                    // Orange rectangle with rounded corners and shadow
                    Rectangle()
                        .frame(width: 300, height: 200)
                        .cornerRadius(20)
                        .foregroundColor(.orange)
                        .shadow(color: .orange.opacity(0.7),
                                radius: 10, x: 0.0, y: 0.0)
                        .offset(x: 0, y: 50)
                        .rotation3DEffect(.degrees(-10), axis: (x: -1, y: 0, z: 0))  // Applying a 3D rotation
                    
                    // Displaying an image with a circular mask
                    Image("MyImage")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 130)
                        .mask {
                            Circle()  // Creating a circular mask for the image
                        }
                        .rotation3DEffect(.degrees(-10), axis: (x: -1, y: 0, z: 0))  // Applying a 3D rotation
                        .offset(x: 110, y: -70)  // Adjusting the position
                    
                    // Text description about the user
                    Text("Tech enthusiast, coder, fueled by curiosity, passionate about science and Astronomy, always eager to learn and explore!")
                        .multilineTextAlignment(.leading)  // Allowing multiple lines of text
                        .font(.system(.title3, design: .monospaced))
                        .frame(width: 305, height: 200)  // Creating a frame for the text
                        .offset(x: 5, y: 75)  // Adjusting the position
                }
            }
            
            // GitHub button displayed at the bottom
            VStack {
                Spacer()  // Filling the space above the button
                
                // Button leading to GitHub profile
                Button(action: {
                    print("Directing to GitHub!")
                }) {
                    Link("GitHub 🐈‍⬛", destination: URL(string: "https://github.com/mansourshebli")!)
                        .frame(width: 200, height: 15)  // Creating a frame for the link
                        .padding()  // Adding padding around the link
                        .font(.system(.title, design: .monospaced))
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(10)  // Adding rounded corners to the background
                }
            }
            
            // Toggle for controlling the visibility of the information box
            Toggle("Try Me!", isOn: $isTagVisible)
                .padding()
                .foregroundColor(.white)
                .offset(y: 200)
            
            // Color picker for selecting the primary background color
            ColorPicker("Pick a primary background color!", selection: $pBgColor)
                .padding()
                .foregroundColor(.white)
                .offset(y: 245)
            
            // Color picker for selecting the secondary background color
            ColorPicker("Pick a secondary background color!", selection: $sBgColor)
                .padding()
                .foregroundColor(.white)
                .offset(y: 280)
        }
    }
}

// Preview provider for displaying the view in Xcode's canvas
struct MansourView_Previews: PreviewProvider {
    static var previews: some View {
        MansourView()
    }
}
