
import Foundation

public extension Sequence {
    
    /// Asynchronous forEach syntactic sugar.
    func forEach (_ operation: (Element) async -> Void) async {
        for element in self {
            await operation(element)
        }
    }
    
    /// Asynchronous forEach syntactic sugar for error-throwing bodies.
    func forEach (_ operation: (Element) async throws -> Void) async rethrows {
        for element in self {
            try await operation(element)
        }
    }
}

