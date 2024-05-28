
import XCTest
@testable import LambdaspireSwiftUtilities

final class AsyncForEachTests: XCTestCase {
    
    func testAsyncForEach() async throws {
        
        var list: [Int] = .init()
        
        await [1,2,3].forEach { n in
            try! await Task.sleep(for: .milliseconds(n))
            list.append(n)
        }
        
        try await [4,5,6].forEach { n in
            try await Task.sleep(for: .milliseconds(n))
            list.append(n)
        }
        
        XCTAssertEqual([1,2,3,4,5,6], list)
    }
}
