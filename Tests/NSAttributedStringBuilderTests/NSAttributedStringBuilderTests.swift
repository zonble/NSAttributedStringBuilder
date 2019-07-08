import XCTest
@testable import NSAttributedStringBuilder

final class NSAttributedStringBuilderTests: XCTestCase {
    func testExample() {
		let x = NSAttributedString {
			NSAttributedString(string: "Hi!")
				.font(NSFont.systemFont(ofSize: 30))
			NSAttributedString(string: "There!")
				.font(NSFont.systemFont(ofSize: 20))
		}
		XCTAssertTrue(x.string == "Hi!There!")
		XCTAssertTrue(x.attribute(.font, at: 0, effectiveRange: nil) is NSFont)
		if let font1 = x.attribute(.font, at: 0, effectiveRange: nil) as? NSFont {
			XCTAssertTrue(font1.pointSize == 30)
		} else {
			XCTFail()
		}
		if let font2 = x.attribute(.font, at: 4, effectiveRange: nil) as? NSFont {
			XCTAssertTrue(font2.pointSize == 20)
		} else {
			XCTFail()
		}
	}

    static var allTests = [
        ("testExample", testExample),
    ]
}
