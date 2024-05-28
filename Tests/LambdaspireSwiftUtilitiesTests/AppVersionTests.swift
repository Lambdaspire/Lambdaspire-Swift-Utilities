import XCTest
@testable import LambdaspireSwiftUtilities

final class AppVersionTests: XCTestCase {
    
    func testAppVersionFromBundle() throws {
        _ = AppVersion.fromBundle
    }
}
