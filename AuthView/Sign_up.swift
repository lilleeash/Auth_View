import SwiftUI

struct SignUpView: View
{
    @State private var email: String = ""
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var rePassword: String = ""
        
    var body: some View
    {
        ZStack
        {
            AnimatedGradient(colors: [Color("blue"), Color("pink"), Color("purple")])
            VStack(spacing: 20)
            {
                Text("Sign Up")
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("Enter E-mail", text: $email)
                    .modifier(GlassItem())
                SecureField("Enter password", text: $password)
                    .modifier(GlassItem())
                Divider()
                Text("By signing up you accept the **Terms of Service** and **Privacy Policy**")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.secondary)
                Button
                {
                    print("Button")
                }
                    label:
                {
                   ZStack
                    {
                        Text("Sign up")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                    }.padding()
                        .background(.ultraThinMaterial)
                        .foregroundStyle(.ultraThinMaterial)
                        .cornerRadius(20)
                }
            }
            .padding()
            .background(.ultraThinMaterial)
            .foregroundColor(Color.primary.opacity(0.35))
            .foregroundStyle(.ultraThinMaterial)
            .cornerRadius(35)
            .padding()
        }
    }
}

struct SignUpView_Previews: PreviewProvider
{
    static var previews: some View
    {
        SignUpView()
    }
}
