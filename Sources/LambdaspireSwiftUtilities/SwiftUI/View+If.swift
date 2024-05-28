
import SwiftUI

public extension View {
    /// Conditionally modifies content.
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, modify: (Self) -> Content) -> some View {
        if condition {
            modify(self)
        } else {
            self
        }
    }
}

