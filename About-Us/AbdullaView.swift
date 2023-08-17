import SwiftUI

struct AbdullaView: View {
    @State private var isColorPickerVisible = false
    @State private var pBgColor = Color.blue
    @State private var sBgColor = Color.cyan
    @State private var startColor = Color.blue
    @State private var endColor = Color.cyan
    @State private var textColor = Color.white
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [startColor, endColor]),
                           startPoint: .top,
                           endPoint: .center)
            .ignoresSafeArea()
            
            VStack {
                Spacer()
                    .frame(height: 50)
                Image("Abdulla")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 5)
                    )
                    .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5)
                
                Text("Abdulla")
                    .font(.system(size: 50, weight: .ultraLight))
                    .foregroundColor(textColor)
                    .offset(y: -20)
                
                Spacer()
                    .frame(height: 30)
                
                HStack(spacing: 30) {
                    PassionItem(icon: "🌎", text: "Geology")
                    PassionItem(icon: "🌌", text: "Astronomy")
                    PassionItem(icon: "💻", text: "Coding")
                    PassionItem(icon: "🔧", text: "Engineering")
                }
                .padding(.top, 30)
                
                Spacer()
                
                VStack(spacing: 20) {
                    Text("Passionated in those things and more!")
                        .font(.system(size: 16))
                        .multilineTextAlignment(.center)
                        .foregroundColor(textColor)
                        .padding()
                        .background(Color.black.opacity(0.6))
                        .cornerRadius(20)
                        .padding(.horizontal, 20)
                    
                    HStack(spacing: 20) {
                        SocialButton(icon: "camera.fill", color: Color.pink, url: "https://www.instagram.com/abds.92", label: "Instagram")
                    }
                }
                .padding(.bottom, 20)
                
                Spacer()
                
                ColorPicker("Text Color", selection: $textColor)
                    .padding()
                    .foregroundColor(.white)
                
                GradientColorPicker(startColor: $startColor, endColor: $endColor)
                    .padding()
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 20)
        }
        .onAppear {
            self.startColor = self.pBgColor
            self.endColor = self.sBgColor
        }
    }
}

struct PassionItem: View {
    let icon: String
    let text: String
    
    var body: some View {
        VStack {
            Text(icon)
                .font(.system(size: 40))
                .frame(width: 50, height: 50)
                .background(Color.white.opacity(0.3))
                .clipShape(Circle())
            
            Text(text)
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(.white)
        }
    }
}

struct SocialButton: View {
    let icon: String
    let color: Color
    let url: String
    let label: String
    
    var body: some View {
        Button(action: {
            if let socialURL = URL(string: url) {
                UIApplication.shared.open(socialURL)
            }
        }) {
            VStack {
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .padding()
                    .background(color)
                    .clipShape(Circle())
                
                Text(label)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(.white)
            }
        }
    }
}

struct GradientColorPicker: View {
    @Binding var startColor: Color
    @Binding var endColor: Color
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Background Gradient")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.white)
            
            ColorPicker("Start Color", selection: $startColor)
                .foregroundColor(.white)
            
            ColorPicker("End Color", selection: $endColor)
                .foregroundColor(.white)
        }
    }
}

struct AbdullaView_Previews: PreviewProvider {
    static var previews: some View {
        AbdullaView()
    }
}
