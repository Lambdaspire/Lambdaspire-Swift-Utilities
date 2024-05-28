
import XCTest
@testable import LambdaspireSwiftUtilities

final class UseTests: XCTestCase {
    
    func testContrivedExample() {
        
        let reallyLongSymbolNameThatIDontWantToTypeMultipleTimes: Int = 10
        
        let cubed = use(reallyLongSymbolNameThatIDontWantToTypeMultipleTimes) {
            $0 * $0 * $0
        }
        
        XCTAssertEqual(cubed, 1000)
    }
}
