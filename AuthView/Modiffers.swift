import Foundation
import SwiftUI

struct GlassItem: ViewModifier
{
    func body(content: Content) -> some View
    {
        content
            .padding()
            .background(.ultraThinMaterial)
            .cornerRadius(14)
    }
}
