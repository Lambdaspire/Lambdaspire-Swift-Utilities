

import XCTest
@testable import LambdaspireSwiftUtilities

final class PluraliseTests: XCTestCase {
    
    func testPluralise() {
        
        let oneDog = pluralise(for: 1, "Dog")
        let twoDogs = pluralise(for: 2, "Dog")
        let threeDogs = pluralise(for: 3, singular: "Dog", plural: "Dogs")
        
        let oneSheep = pluralise(for: 1, "Sheep")
        let twoSheeps = pluralise(for: 2, "Sheep") // Me fail English? That's unpossible!
        let threeSheep = pluralise(for: 3, singular: "Sheep", plural: "Sheep")
        
        let tenOctopi = pluralise(for: 10, singular: "Octopus", plural: "Octopi")
        
        XCTAssertEqual(oneDog, "Dog")
        XCTAssertEqual(twoDogs, "Dogs")
        XCTAssertEqual(threeDogs, "Dogs")
        
        XCTAssertEqual(oneSheep, "Sheep")
        XCTAssertEqual(twoSheeps, "Sheeps")
        XCTAssertEqual(threeSheep, "Sheep")
        
        XCTAssertEqual(tenOctopi, "Octopi")
    }
}
