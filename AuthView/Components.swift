import Foundation
import SwiftUI

struct AnimatedGradient: View
{
    //Points for gradient
    @State private var start = UnitPoint(x: 0, y: 0)
    @State private var end = UnitPoint(x: 0, y: 2)
    // Array of colors
    let colors: [Color]
    //[Color("blue"), Color("pink"), Color("purple")]
    var body: some View
    {
        LinearGradient(colors: colors, startPoint: start, endPoint: end)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture
        {
            withAnimation (.easeInOut(duration: 3).repeatForever())
            {
                self.start = UnitPoint(x: 1, y: -1)
                self.end = UnitPoint(x: 0, y: 1)
            }
        }
    }
}

struct CustomTextField: View
{
    @State private var username: String = ""
    var body: some View
    {
        TextField("Enter username", text: $username)
            .frame(height: 50)
            .modifier(GlassItem())
            .foregroundColor(.secondary)
    }
}

struct PrimaryButton: View
{
    @Environment(\.colorScheme) var colorScheme
    var body: some View
    {
        ZStack
        {
            Rectangle()
                .modifier(GlassItem())
                .foregroundColor(colorScheme == .dark ? .black : .white)
                .frame(width: 100, height: 45)
    
            Text("Next")
                .fontWeight(.semibold)
                .foregroundColor(colorScheme == .dark ? .white : .black)
        }.padding()
    }
}

struct SecureTextField: View {
    
    @State private var isSecure: Bool = true
    @Binding var text: String

    var body: some View {
        HStack {
            if isSecure {
                
                SecureField("Enter your password", text: $text)
                    .modifier(GlassItem())
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                
            } else {
                
                TextField(text, text: $text)
                    .modifier(GlassItem())
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
            }
        }.overlay(alignment: .trailing) {
            Image(systemName: isSecure ? "eye.slash" : "eye")
                .padding(.trailing, 8)
                .onTapGesture {
                    isSecure.toggle()
                }
        }
    }
}

struct AnimatedGradient_Preview: PreviewProvider
{
    static var previews: some View
    {
        AnimatedGradient(colors: [Color("blue"), Color("pink"), Color("purple")])
    }
}
