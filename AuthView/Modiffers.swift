import Foundation
import SwiftUI

struct GlassItem: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.ultraThinMaterial)
            .cornerRadius(14)
    }
}

// .textFieldStyle(CustomTextFieldStyle())
struct CustomTextFieldStyle: TextFieldStyle {
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        
        return configuration
            .modifier(GlassItem())
            .disableAutocorrection(true)
            .autocapitalization(.none)
            .foregroundColor(.secondary)
    }
}
