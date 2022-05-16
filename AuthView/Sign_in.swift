import SwiftUI

struct SignInView: View {
    @State private var email: String = ""
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isShowingSheet = false
    
    var body: some View  {
        ZStack {
            AnimatedGradient(colors: [Color("blue"), Color("pink"), Color("purple")])
            
            VStack(spacing: 20) {
                Text("Sign In")
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                TextField("Enter E-mail", text: $email)
                    .textFieldStyle(CustomTextFieldStyle())
                
                SecureTextField(text: $password)
                
                Divider()
                
                Text("By signing up you accept the **Terms of Service** and **Privacy Policy**")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Divider()
                
                HStack {
                    Text("If you don't have an accont")
                    
                    Button {
                        isShowingSheet.toggle()
                    } label: {
                        Text("Sign Up")
                            .fontWeight(.semibold)
                            .foregroundColor(.secondary)
                    }
                    .sheet(isPresented: $isShowingSheet) {
                        SignUpView()
                    }
                }
                .frame(maxWidth: .infinity, alignment: .topLeading)

                Button {
                    print("Button")
                }
                    label:
                {
                   ZStack {
                        Text("Sign In")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                    }
                    .padding()
                    .background(.ultraThinMaterial)
                    .foregroundStyle(.ultraThinMaterial)
                    .cornerRadius(20)
                    .padding()
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

struct SignInView_Previews: PreviewProvider
{
    static var previews: some View
    {
        SignInView()
    }
}
