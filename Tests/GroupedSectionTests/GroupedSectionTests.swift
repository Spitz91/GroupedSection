import XCTest
import GroupedSection

final class GroupedSectionTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        
        let names = ["Alice", "Bob", "Abe"]
        
        let sections = GroupedSection.group(names) { String($0.first!) }
        
        XCTAssertEqual(2, sections.count)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
