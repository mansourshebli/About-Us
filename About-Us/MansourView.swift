//
//  MansourView.swift
//  About-Us
//
//  Created by Mansour Mohammed Alshebli on 14/08/2023.
//

import SwiftUI

struct MansourView: View {
    
    @State private var isTagVisible = true
    @State private var pBgColor = Color.blue
    @State private var sBgColor = Color.cyan
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [pBgColor, sBgColor],
                           startPoint: .top,
                           endPoint: .center)
                .ignoresSafeArea()
            
            Circle()
                .foregroundColor(.indigo)
                .shadow(color: .indigo.opacity(1),
                        radius: 10, x: 0.0, y: 0.0)
                .offset(x: 0, y: -430)
            
            VStack {
                Text("Hello 👋🏻 I'm")
                    .font(.system(.largeTitle, design: .monospaced))
                    .bold()
                    .foregroundColor(.orange)
                    .frame(width: 250, height: 250)
                    .offset(x: 0, y: -150)
                
                Spacer()
                    .frame(height: 50)
                
                Text("Mansour")
                    .font(.system(size: 50, design: .serif))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .frame(width: 300, height: 300)
                    .offset(x: -10, y: -300)
                    .rotation3DEffect(.degrees(-10), axis: (x: 1, y: 1, z: 0))
            }
            
            ZStack {
                if isTagVisible{
                    Rectangle()
                        .frame(width: 300, height: 200)
                        .cornerRadius(20)
                        .foregroundColor(.orange)
                        .shadow(color: .orange.opacity(0.7),
                                radius: 10, x: 0.0, y: 0.0)
                        .offset(x: 0, y: 50)
                        .rotation3DEffect(.degrees(-10), axis: (x: -1, y: 0, z: 0))
                    
                    Image("MyImage")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 130)
                        .mask {
                            Circle()
                        }
                        .rotation3DEffect(.degrees(-10), axis: (x: -1, y: 0, z: 0))
                        .offset(x: 110, y: -70)
                    
                    Text("Tech enthusiast, coder, fueled by curiosity, passionate about science and Astronomy, always eager to learn and explore!")
                        .multilineTextAlignment(.leading)
                        .font(.system(.title3, design: .monospaced))
                        .frame(width: 305, height: 200)
                        .offset(x: 5, y: 75)
                }
            }
            
            VStack {
                Spacer()
                
                Button(action: {
                    print("Directing to GitHub!")
                }) {
                    Link("GitHub 🐈‍⬛", destination: URL(string: "https://github.com/mansourshebli")!)
                        .frame(width: 200, height: 15)
                        .padding()
                        .font(.system(.title, design: .monospaced))
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(10)
                }
            }
                Toggle("Try Me!", isOn: $isTagVisible)
                    .padding()
                    .foregroundColor(.white)
                    .offset(y: 200)
            
            ColorPicker("Pick a primary background color!", selection: $pBgColor)
                .padding()
                .foregroundColor(.white)
                .offset(y: 245)
            ColorPicker("Pick a secondary background color!", selection: $sBgColor)
                .padding()
                .foregroundColor(.white)
                .offset(y: 280)
            }
        }
    }


struct MansourView_Previews: PreviewProvider {
    static var previews: some View {
        MansourView()
    }
}


