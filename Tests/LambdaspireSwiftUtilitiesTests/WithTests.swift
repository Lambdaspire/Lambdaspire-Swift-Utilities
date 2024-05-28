
import XCTest
@testable import LambdaspireSwiftUtilities

final class WithTests: XCTestCase {
    
    func testWithModifiesOriginal() {
        var original: Int = 1
        
        let modified = with(&original) {
            $0 = 10
        }
        
        XCTAssertEqual(original, 10)
        XCTAssertEqual(modified, 10)
    }
    
    func testWithModifiesCopyLeavingOriginalIntact() {
        let original: Int = 1
        
        let modified = with(original) {
            $0 = 10
        }
        
        XCTAssertEqual(original, 1)
        XCTAssertEqual(modified, 10)
    }
    
    func testWithClassModifiesOriginal() {
        let original: Test = .init()
        
        let modified = with(original) {
            $0.state += 1
        }
        
        XCTAssertIdentical(original, modified)
        XCTAssertEqual(original.state, 1)
    }
}


fileprivate class Test {
    var state: Int = 0
}
